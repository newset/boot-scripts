#! /bin/bash

brew install tmux unar python3

echo "install docker golang docker-compose iterm2"
brew install --cask --appdir=/Applications docker
brew install golang docker-compose iterm2

### install vscode
echo "install vscode"
brew install --cask visual-studio-code

echo "install raycast"
brew install --cask raycast 

echo "fig"
brew install --cask fig
