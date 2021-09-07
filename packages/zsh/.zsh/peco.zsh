# 過去に実行したコマンドを選択
function peco-select-history() {
  BUFFER=$(\history -n -r 1 | peco --query "$LBUFFER" --layout bottom-up)
  CURSOR=$#BUFFER
}
zle -N peco-select-history
bindkey '^r' peco-select-history

# CDR
if [[ -n $(echo ${^fpath}/chpwd_recent_dirs(N)) && -n $(echo ${^fpath}/cdr(N)) ]]; then
    autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
    add-zsh-hook chpwd chpwd_recent_dirs
    zstyle ':completion:*' recent-dirs-insert both
    zstyle ':chpwd:*' recent-dirs-default true
    zstyle ':chpwd:*' recent-dirs-max 1000
    zstyle ':chpwd:*' recent-dirs-file "$HOME/.cache/chpwd-recent-dirs"
fi

# CDRリストからディレクトリを検索する
function peco-get-destination-from-cdr() {
  cdr -l | \
  sed -e 's/^[[:digit:]]*[[:blank:]]*//' | \
  peco --query "$LBUFFER" --layout bottom-up
}
# 過去に移動したことのあるディレクトリを選択して移動
function peco-cdr() {
  local destination="$(peco-get-destination-from-cdr)"
  if [ -n "$destination" ]; then
    BUFFER="cd $destination"
    zle accept-line
  else
    zle reset-prompt
  fi
}
zle -N peco-cdr
bindkey '^u' peco-cdr


# ブランチを簡単切り替え。
# ex: git checkout lb
alias -g lb='`git branch | peco --prompt "GIT BRANCH>" | head -n 1 | sed -e "s/^\*\s*//g"`'

# dockerコンテナに入る
alias de='docker exec -it $(docker ps | peco | cut -d " " -f 1) /bin/bash'