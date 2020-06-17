git submodule init
git submodule update

mkdir -p data
mkdir -p tellme-nginx/data

# [Websocket]
sudo cp -r tellme-server/ tellme-daphne/

# [Front-end]
curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo
curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo bash -
sudo yum install yarn
cd tellme-client
yarn install
yarn build
sudo mkdir ${pwd}/../tellme-nginx/data/web
cp -r ${pwd/}build/* ${pwd}/../tellme-nginx/data/web

# [Docker + Compose]
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install docker-ce docker-ce-cli containerd.io
sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

# [settings.py]
if [ ! -f ${pwd}/tellme-server/tellme/settings.py ]; then
  echo "Please download your setting file."
  exit 1
fi

# [SSL]
if [ ! -f ${pwd}/tellme-nginx/data/certbot/conf/live/tellme.ken-han.info/cert.pem ]; then
  echo "Please run the command to obtain a SSL certificate: ./init-letsencrypt.sh"
  exit 1
fi
