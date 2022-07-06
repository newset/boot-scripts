# install android studio
brew install java openjdk
brew install --cask android-studio

sudo ln -sfn /usr/local/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

echo 'export ANDROID_HOME=$HOME/Library/Android/sdk' >> ~/.zprofile
export ANDROID_HOME=$HOME/Library/Android/sdk

# install
curl https://dl.google.com/android/repository/commandlinetools-mac-8512546_latest.zip  >> $ANDROID_HOME/cmdline-tools.zip
cd $ANDROID_HOME
unzip cmdline-tools.zip -d .
rm cmdline-tools.zip

# proxy
# mirrors.neusoft.edu.cn:80

# install ndk
yes | ${sdk}/cmdline-tools/bin/sdkmanager --licenses
   
