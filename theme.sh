git clone git@github.com:ChesterYue/ohmyzsh-theme-passion.git ${ZSH_CUSTOM}/themes/Passion
brew install coreutils
sed -i "" 's/ZSH_THEME=".*/ZSH_THEME="Passion\/passion"/g' ~/.zshrc
