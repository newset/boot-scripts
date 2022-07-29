. "$HOME/.cargo/env"

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin:$HOME/flutter/bin

# ndk path

NDK_DIRS=($HOME/Library/Android/sdk/ndk/*/)
export NDK_HOME=${NDK_DIRS[1]}
