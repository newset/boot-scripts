#! /bin/bash

export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles"

### install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


# 自动设置
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"
for tap in core cask{,-fonts,-drivers,-versions} command-not-found; do
    brew tap --custom-remote --force-auto-update "homebrew/${tap}" "https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-${tap}.git"
done
brew update

### install zsh on-my-zsh

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

brew install tmux unar python3

# install nvm and node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
nvm install 16
nvm use 16

### clone .shell
git clone  https://github.com/newset/.shell ~/.shell

# diskutil apfs updatePreboot disk1s1

sudo find /Users/Doctorwork -name ".DS_Store" -depth -exec rm {} \; 
defaults write com.apple.desktopservices DSDontWriteNetworkStores true 

# or use curl
# cd ~/Library/Fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf

echo "install docker golang docker-compose iterm2"
brew install --cask --appdir=/Applications docker
brew install golang docker-compose iterm2

### install vscode
echo "install vscode"
brew install --cask visual-studio-code

echo "install raycast"
brew install --cask raycast 

npm config set registry http://r.cnpmjs.org --global
npm config set disturl https://npm.taobao.org/mirrors/node --global

npm i yarn -g
yarn config set registry http://r.cnpmjs.org --global
yarn config set disturl https://npm.taobao.org/mirrors/node --global


# ruby gem
gem sources --add https://mirrors.tuna.tsinghua.edu.cn/rubygems/ --remove https://rubygems.org/
bundle config mirror.https://rubygems.org https://mirrors.tuna.tsinghua.edu.cn/rubygems

echo "安装cocoapods gem"

# install cocoapods
sudo gem install cocoapods

echo "初始化 cocoapods 仓库"
if [ ! -d "$DIR" ]; then
  echo "create repos folder."
  mkdir -p ~/.cocoapods/repos
fi

cd ~/.cocoapods/repos 
pod repo remove master
git clone https://mirrors.tuna.tsinghua.edu.cn/git/CocoaPods/Specs.git master

# rust
echo "安装rust"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

cd $HOME
echo "downloading flutter sdk from mirror flutter-io.cn"
if [ `arch` != 'arm64' ]
then
    echo "get intel chip flutter"
    curl https://storage.flutter-io.cn/flutter_infra_release/releases/stable/macos/flutter_macos_3.0.5-stable.zip > flutter.zip
else
    echo "get arm chip flutter"
    curl https://storage.flutter-io.cn/flutter_infra_release/releases/stable/macos/flutter_macos_arm64_3.0.5-stable.zip > flutter.zip
fi

unzip flutter.zip

echo "set flutter envs"
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn

echo "install jetbrains mono"

curl -L https://download.jetbrains.com/fonts/JetBrainsMono-2.242.zip | bsdtar -xvf-
cp fonts/ttf/* /Library/Fonts



