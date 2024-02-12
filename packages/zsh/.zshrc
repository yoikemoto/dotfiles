echo Loading...
for f in $STOW_PACKAGES_PATH/zsh/.zsh/*.zsh; source $f done;
echo DONE!

# starshipプロンプトの起動
# NOTE: 実行順番の関係か、反映されないのでzshrcに直書きしている
eval "$(starship init zsh)"
