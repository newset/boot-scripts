#! /bin/bash

MIRROR="${MIRROR:=https://mirrors.tuna.tsinghua.edu.cn}"
MIRROR_GIT="${MIRROR_GIT:=https://mirrors.tuna.tsinghua.edu.cn/git}"

export HOMEBREW_BREW_GIT_REMOTE="$MIRROR_GIT/homebrew/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="$MIRROR_GIT/homebrew/homebrew-core.git"
export HOMEBREW_BOTTLE_DOMAIN="$MIRROR/homebrew-bottles"

### install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://ghproxy.com/raw.githubusercontent.com/Homebrew/install/master/install)"

# 自动设置
export HOMEBREW_CORE_GIT_REMOTE="$MIRROR_GIT/homebrew/homebrew-core.git"
brew update

### install zsh on-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

### clone .shell
git clone https://github.com/newset/.shell ~/.shell

# sudo find /Users/Doctorwork -name ".DS_Store" -depth -exec rm {} \; 
echo "disable DS_Store file"
defaults write com.apple.desktopservices DSDontWriteNetworkStores true 

# ruby gem
gem sources --add $MIRROR/rubygems/ --remove https://rubygems.org/
bundle config mirror.https://rubygems.org $MIRROR/rubygems

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
git clone $MIRROR_GIT/CocoaPods/Specs.git master

# rust
echo "安装rust"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

echo "install jetbrains mono"

curl -L https://download.jetbrains.com/fonts/JetBrainsMono-2.242.zip | bsdtar -xvf-
cp fonts/ttf/* /Library/Fonts
