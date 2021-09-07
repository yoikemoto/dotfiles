echo zshのconfigを読み込み中...
for f in $HOME/dotfiles/packages/zsh/.zsh/*.zsh; source $f done;
echo 完了!

eval "$(starship init zsh)"