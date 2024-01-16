git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# https://github.com/tmux-plugins/tpm
echo "set -g @plugin 'tmux-plugins/tpm'" >> .tmux.conf
echo "set -g @plugin 'tmux-plugins/tmux-sensible'" >> .tmux.conf
echo "set -g @plugin 'o0th/tmux-nova'" >> .tmux.conf

echo "run '~/.tmux/plugins/tpm/tpm'" >> .tmux.conf

tmux source-file ~/.tmux.conf
