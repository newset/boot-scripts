cd $HOME
echo "downloading flutter sdk from mirror flutter-io.cn"
if [ `arch` != 'arm64' ]
then
    echo "get intel chip flutter"
    curl https://storage.flutter-io.cn/flutter_infra_release/releases/stable/macos/flutter_macos_3.0.5-stable.zip > flutter.zip
else
    echo "get arm chip flutter"
    curl https://storage.flutter-io.cn/flutter_infra_release/releases/stable/macos/flutter_macos_arm64_3.0.5-stable.zip > flutter.zip
fi

unzip flutter.zip

echo "set flutter envs"
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
