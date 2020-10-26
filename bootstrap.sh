if [ "$EUID" -ne 0 ]
  then echo 'Please run as root: "sudo sh ./bootstrap.sh"'
  exit
fi

sudo yum install -y unzip
git submodule init
git submodule update


mkdir -p data
mkdir -p tellme-nginx/data

# [settings.py]
if [ ! -f $PWD/tellme-server/tellme/settings.py ] || [ ! -d $PWD/tellme-server/static ] || [ ! -d $PWD/tellme-server/media ]; then
  echo "Please input your enctyped file's password (<your birthday>-<your graduate university>-<your personal password>)":
  echo -n "example: 880314-nyu-axxxxxxx6: "
  read -s password
  
  # (encrypted) zip -re <target> <files...> (decrypted) unzip -P <password> file.zip
  if sudo unzip -P $password bunch.zip 2>&1 > /dev/null |  grep -q 'incorrect'; then
    echo ""
    echo "Incorrect password."
    exit 1
  fi
  sudo mv media/ tellme-server/
  sudo mv static/ tellme-server/
  sudo mv settings.py tellme-server/tellme/
fi

# [Websocket]
sudo cp -r $PWD/tellme-server/ $PWD/tellme-daphne/

# [node + yarn]
if [ ! -x /usr/bin/yarn ]; then
  curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo
  curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo bash -
  sudo yum install yarn
fi

# build front-end pages
cd $PWD/tellme-client
sudo rm -rf $PWD/tellme-client/node_modules 
yarn install
yarn build
cd ..
sudo mkdir -p $PWD/tellme-nginx/data/web
sudo cp -r $PWD/tellme-client/build/* $PWD/tellme-nginx/data/web


# [docker]
if [ ! -x /usr/bin/docker ]; then
  sudo yum install -y yum-utils
  sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
  sudo yum install docker-ce docker-ce-cli containerd.io
fi

# [docker-compose]
if [ ! -x /usr/bin/docker-compose ] && [ ! -x /usr/local/bin/docker-compose ]; then
  sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
  sudo chmod +x /usr/local/bin/docker-compose
  sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
fi

# Start docker service
sudo systemctl start docker


# [DB]
sudo rm -rf $PWD/data/*
sudo docker-compose up -d db
echo -n "Sleeping 1 min to wait for mysqld start ... "
sleep 60
echo "done"
sudo cp backup.sql data/
echo -n "Sleeping 5s to wait for mysqld response ... "
sleep 5
echo "done"
sudo docker-compose exec db sh -c 'mysql --host 127.0.0.1 --port 3306 -uroot -proot -e "create database tellme"'
echo -n "Sleeping 5s to wait for mysqld response ... "
sleep 5
echo "done"
sudo docker-compose exec db sh -c 'mysql --host 127.0.0.1 --port 3306 -uroot -proot tellme < /var/lib/mysql/backup.sql'


# [elasticsearch setting]
sudo docker-compose build tellme-server
sudo docker-compose up -d tellme-server
echo -n "Sleeping 5s to wait for mysqld start ... "
sleep 5
echo "done"
#sudo docker-compose exec tellme-server sh -c 'python3 manage.py migrate'
sudo docker-compose exec tellme-server sh -c 'python3 manage.py rebuild_index'
sudo docker-compose stop tellme-server
sudo docker-compose stop db


# [SSL]
if [ ! -f $PWD/tellme-nginx/data/certbot/conf/live/tellme.ken-han.info/cert.pem ]; then
  sudo cp $PWD/tellme-nginx/conf/nginx-certbot.conf $PWD/tellme-nginx/nginx.conf
  sudo docker-compose down
  sudo docker-compose rm
  sudo docker-compose build
  echo 'Please run the command to obtain a SSL certificate: "sudo ./init-letsencrypt.sh"'
  echo '[Reminder] Please go to DNS provider to modify your ip address first: https://dcc.godaddy.com/manage/ken-han.info'
  exit
else
  echo "Find SSL certification."
  sudo cp $PWD/tellme-nginx/conf/nginx.conf $PWD/tellme-nginx/nginx.conf
fi

# [Stop possible service]
if service --status-all | grep -Fq 'redis'; then
  sudo systemctl stop redis
fi

if service --status-all | grep -Fq 'nginx'; then
  sudo systemctl stop nginx
fi

if service --status-all | grep -Fq 'mysqld'; then
  sudo systemctl stop mysqld
fi


## [Start services]
sudo docker-compose down
sudo docker-compose rm
sudo docker-compose build
sudo docker-compose up

## Auto set-up sever when starting it
sudo echo "sudo systemctl start docker" >> /etc/rc.d/rc.local
sudo echo "sudo docker-compose up" >> /etc/rc.d/rc.local
sudo chmod a+x /etc/rc.d/rc.local


