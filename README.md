# boot-scripts
scripts for new environment

安装软件和shell配置
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/newset/boot-scripts/master/install.sh)"
```

添加`.zshenv`文件
```
curl -fsSL https://raw.githubusercontent.com/newset/boot-scripts/master/env/.zshenv > $HOME/.zshenv
```

添加`.curlrc`文件

```
curl -fsSL https://raw.githubusercontent.com/newset/boot-scripts/master/env/.curlrc > $HOME/.curlrc
```

添加`.ssh/config`github配置
```
echo "Host github.com
  HostName github.com
  User git
  ProxyCommand nc -v -x 127.0.0.1:1086 %h %p" >> $HOME/.ssh/config
```