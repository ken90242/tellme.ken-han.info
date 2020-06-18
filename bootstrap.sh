git submodule init
git submodule update

if [ "$EUID" -ne 0 ]
  then echo 'Please run as root: "sudo sh ./bootstrap.sh"'
  exit
fi

mkdir -p data
mkdir -p tellme-nginx/data

# [settings.py]
if [ ! -f $PWD/tellme-server/tellme/settings.py ]; then
  echo "Please download your setting file."
  exit 1
fi

if [ ! -d $PWD/tellme-server/static ]; then
  echo "Please download your static files."
  exit 1
fi

if [ ! -d $PWD/tellme-server/media ]; then
  echo "Please download your media files."
  exit 1
fi

## [Websocket]
sudo cp -r $PWD/tellme-server/ $PWD/tellme-daphne/

# [node + yarn]
if [ command -v yarn >/dev/null 2>&1 ]; then
  curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo
  curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo bash -
  sudo yum install yarn
fi

# [Front-end]
cd $PWD/tellme-client
sudo rm -rf $PWD/tellme-client/node_modules 
yarn install
yarn build
sudo mkdir -p $PWD/tellme-nginx/data/web
sudo cp -r $PWD/tellme-client/build/* $PWD/tellme-nginx/data/web

# [Docker + Compose]
if [ command -v docker >/dev/null 2>&1 ]; then
  sudo yum install -y yum-utils
  sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
  sudo yum install docker-ce docker-ce-cli containerd.io
fi

if [ command -v docker-compose >/dev/null 2>&1 ]; then
  sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
  sudo chmod +x /usr/local/bin/docker-compose
  sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
fi

# [elasticsearch setting]
sudo docker-compose up -d tellme-server
sudo docker-compose exec tellme-server sh -c 'python3 manage.py migrate'
sudo docker-compose exec tellme-server sh -c 'python3 manage.py rebuild_index'
sudo docker-compose stop tellme-server


## [DB]
sudo docker-compose up -d db
sudo cp backup.sql data/
sudo docker-compose exec db sh -c 'mysql -uroot -proot -e "create database tellme"'
sudo docker-compose exec db sh -c 'mysql -uroot -proot tellme < /var/lib/mysql/backup.sql'
sudo docker-compose stop db

# [SSL]
if [ ! -f $PWD/tellme-nginx/data/certbot/conf/live/tellme.ken-han.info/cert.pem ]; then
  sudo cp $PWD/tellme-nginx/conf/nginx-certbot.conf $PWD/tellme-nginx/nginx.conf
  sudo docker-compose down
  sudo docker-compose rm
  sudo docker-compose build
  echo 'Please run the command to obtain a SSL certificate: "sudo ./init-letsencrypt.sh"'
  exit
else
  echo "Find SSL certification."
  sudo cp $PWD/tellme-nginx/conf/nginx.conf $PWD/tellme-nginx/nginx.conf
fi

# [Stop possible service]
sudo systemctl stop redis
sudo systemctl stop nginx
sudo systemctl stop mysqld


## [Start services]
sudo systemctl start docker
sudo docker-compose down
sudo docker-compose rm
sudo docker-compose build
sudo docker-compose up

