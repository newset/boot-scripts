#! /bin/bash

export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles"

### install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

### install zsh on-my-zsh
brew install zsh git-hub tmux unar python3
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

### clone .shell
gh-get newset/.shell

# diskutil apfs updatePreboot disk1s1

sudo find /Users/Doctorwork -name ".DS_Store" -depth -exec rm {} \; 

defaults write com.apple.desktopservices DSDontWriteNetworkStores true 

brew install vim --with-lua --with-override-system-vi

# font

brew tap caskroom/fonts
brew cask install font-hack-nerd-font

brew install node docker golang

### install vscode
brew cask install visual-studio-code

npm config set registry http://r.cnpmjs.org --global
npm config set disturl https://npm.taobao.org/mirrors/node --global

npm i yarn -g
yarn config set registry http://r.cnpmjs.org --global
yarn config set disturl https://npm.taobao.org/mirrors/node --global


# ruby gem
gem sources --add https://gems.ruby-china.org/ --remove https://rubygems.org/

# install cocoapods
sudo gem install cocoapods

cd ~/.cocoapods/repos 
pod repo remove master
git clone https://mirrors.tuna.tsinghua.edu.cn/git/CocoaPods/Specs.git master
