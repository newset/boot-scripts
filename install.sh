sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

sudo spctl --master-disable


brew
brew update
brew install tmux

# diskutil apfs updatePreboot disk1s1

sudo find /Users/Doctorwork -name ".DS_Store" -depth -exec rm {} \; 

defaults write com.apple.desktopservices DSDontWriteNetworkStores true 

brew install vim --with-lua --with-override-system-vi

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


# font

brew tap caskroom/fonts
brew cask install font-hack-nerd-font

brew install node

npm config set registry http://r.cnpmjs.org --global
npm config set disturl https://npm.taobao.org/mirrors/node --global

npm i yarn -g
yarn config set registry http://r.cnpmjs.org --global
yarn config set disturl https://npm.taobao.org/mirrors/node --global


# ruby gem

gem sources --add https://gems.ruby-china.org/ --remove https://rubygems.org/

# cocoapods
cd ~/.cocoapods/repos 
pod repo remove master
pod repo add master https://git.coding.net/jasper/CocoaPods.git
git clone https://mirrors.tuna.tsinghua.edu.cn/git/CocoaPods/Specs.git master
