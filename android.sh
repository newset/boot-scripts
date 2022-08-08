# install android studio
# check install

if [ ! -d /Application/Anddroid\ Studio.app ]; then
   brew install --cask android-studio
fi;

echo 'export ANDROID_HOME=$HOME/Library/Android/sdk' >> ~/.zprofile


export ANDROID_HOME=$HOME/Library/Android/sdk

# install
curl https://dl.google.com/android/repository/commandlinetools-mac-8512546_latest.zip  >> $ANDROID_HOME/cmdline-tools.zip
cd $ANDROID_HOME
mkdir -p ./cmdline-tools/
unzip cmdline-tools.zip -d ./cmdline-tools/
mv cmdline-tools/cmdline-tools/ cmdline-tools/latest
rm cmdline-tools.zip

# proxy
# mirrors.neusoft.edu.cn:80

# install ndk
yes | ${ANDROID_HOME}/cmdline-tools/latest/bin/sdkmanager --licenses

alias sdkmanager=${ANDROID_HOME}/cmdline-tools/latest/bin/sdkmanager

sdkmanager --install "ndk;21.3.6528147"
sdkmanager --install "cmake;3.18.1"
   
