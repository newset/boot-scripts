# install android studio
brew install java openjdk
brew install --cask android-studio

sudo ln -sfn /usr/local/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

echo 'export ANDROID_HOME=$HOME/Library/Android/sdk' >> ~/.zprofile
echo 'export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk.jdk/Contents/Home' >> ~/.zprofile 

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
   
