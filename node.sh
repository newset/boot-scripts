# install nvm and node
echo "install nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
nvm install 16
nvm use 16

npm config set registry http://r.cnpmjs.org --global
npm config set disturl https://npm.taobao.org/mirrors/node --global

npm i yarn -g
yarn config set registry http://r.cnpmjs.org --global
yarn config set disturl https://npm.taobao.org/mirrors/node --global

