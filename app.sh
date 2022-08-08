#! /bin/bash

brew install tmux unar python3

# install nvm and node
echo "install nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
nvm install 16
nvm use 16

echo "install docker golang docker-compose iterm2"
brew install --cask --appdir=/Applications docker
brew install golang docker-compose iterm2

### install vscode
echo "install vscode"
brew install --cask visual-studio-code

echo "install raycast"
brew install --cask raycast 
