## SSH
- 环境变量 切换私钥
```
export GIT_SSH_COMMAND="ssh -i ~/.ssh/my_rsa"
```

- git config 切换私钥
```
git config --local core.sshCommand "ssh -i ~/.ssh/my_rsa"
```
