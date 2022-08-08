# boot-scripts
scripts for new environment

## Homebrew 源

- 清华
```
export MIRROR=https://mirrors.tuna.tsinghua.edu.cn
export MIRROR_GIT=https://mirrors.tuna.tsinghua.edu.cn/git
```

- 腾讯
```
export MIRROR=https://mirrors.cloud.tencent.com
export MIRROR_GIT=https://mirrors.cloud.tencent.com
```

### 安装软件和shell配置

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/newset/boot-scripts/master/install.sh)"
```

### 安装Flutter

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/newset/boot-scripts/master/flutter.sh)"
```

### 安装 App

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/newset/boot-scripts/master/app.sh)"
```

### 安装前端开发工具

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/newset/boot-scripts/master/web.sh)"
```

### 安装Android开发工具

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/newset/boot-scripts/master/android.sh)"
```

## 配置

### NPM源设置

```
npm config set registry http://r.cnpmjs.org --global
npm config set disturl https://npm.taobao.org/mirrors/node --global

npm i yarn -g
yarn config set registry http://r.cnpmjs.org --global
yarn config set disturl https://npm.taobao.org/mirrors/node --global
```


### 添加配置文件

- 添加`.zshenv`文件

```
curl -fsSL https://raw.githubusercontent.com/newset/boot-scripts/master/env/.zshenv > $HOME/.zshenv
```

- 添加`.curlrc`文件

```
curl -fsSL https://raw.githubusercontent.com/newset/boot-scripts/master/env/.curlrc > $HOME/.curlrc
```

- 添加`.ssh/config`github配置

```
echo "Host github.com
  HostName github.com
  User git
  ProxyCommand nc -v -x 127.0.0.1:1080 %h %p" >> $HOME/.ssh/config
```

