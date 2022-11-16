#! /bin/bash

brew install tmux unar python3 fd ack

echo "install docker golang docker-compose"
brew install --cask --appdir=/Applications docker
brew install golang docker-compose

### install vscode
echo "install vscode"
brew install --cask visual-studio-code

echo "install raycast warp: terminal"
brew install --cask raycast warp

echo "install dust: disk usage"
brew install dust 
