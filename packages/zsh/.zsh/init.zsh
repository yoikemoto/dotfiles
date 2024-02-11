# TODO: 暫定対応 rbenvの指定バージョンを反映させている
eval "$(rbenv init - zsh)"

. /opt/homebrew/opt/asdf/libexec/asdf.sh

# Added by OrbStack: command-line tools and integration
source ~/.orbstack/shell/init.zsh 2>/dev/null || :

# envrc(go開発にdirenv使ってるため）
# eval "$(direnv hook zsh)" (動かなかったらコメントイン)

# bun completions (動かなかったらコメントイン)
# [ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"