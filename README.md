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