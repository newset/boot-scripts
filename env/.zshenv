. "$HOME/.cargo/env"

# git lang
# zh_CN.UTF-8 
export LANG=en_US
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin:$HOME/flutter/bin

# ndk path

NDK_DIRS=($HOME/Library/Android/sdk/ndk/*/)
export NDK_HOME=${NDK_DIRS[1]}

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
