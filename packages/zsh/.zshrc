echo zshのconfigを読み込み中...
for f in $HOME/dotfiles/packages/zsh/.zsh/*.zsh; source $f done;
echo 完了!

eval "$(starship init zsh)"
# TODO: 暫定対応 rbenvの指定バージョンを反映させている
eval "$(rbenv init - zsh)"


# envrc(go開発にdirenv使ってるため）
eval "$(direnv hook zsh)"

# export PATH="/usr/local/opt/libxslt/bin:$PATH"
# export LDFLAGS="-L/usr/local/opt/libxslt/lib"
# export CPPFLAGS="-I/usr/local/opt/libxslt/include"
# export PKG_CONFIG_PATH="/usr/local/opt/libxslt/lib/pkgconfig"
source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash
. /usr/local/opt/asdf/libexec/asdf.sh

# bun completions
[ -s "/Users/ikmt/.bun/_bun" ] && source "/Users/ikmt/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH=$(go env GOPATH)/bin:$PATH
