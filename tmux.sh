wget http://galaxy4.net/repo/RHEL/7/x86_64/tmux-3.3-1.el7.x86_64.rpm
rpm -ivh tmux-3.3-1.el7.x86_64.rpm
rm tmux-3.3-1.el7.x86_64.rpm

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# https://github.com/tmux-plugins/tpm
echo "set -g @plugin 'tmux-plugins/tpm'" >> .tmux.conf
echo "set -g @plugin 'tmux-plugins/tmux-sensible'" >> .tmux.conf
echo "set -g @plugin 'o0th/tmux-nova'" >> .tmux.conf
echo "set -g @plugin 'tmux-plugins/tmux-yank'" >> .tmux.conf

echo "run '~/.tmux/plugins/tpm/tpm'" >> .tmux.conf

brew install reattach-to-user-namespace

tmux source-file ~/.tmux.conf
