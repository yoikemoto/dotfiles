# Linux
alias la='ls -a'
# WARN: NERD系のフォントをターミナル側で設定しないと、アイコンが文字化けするので注意
# ※ Hack Nerd Fontを使用している
alias ls='eza --icons --git -al'
alias grep='rg'
# git
alias g='git'
alias gti='git'
alias gadd='git add'
alias gdiff='git diff'
alias gst='git status'
alias gpull='git pull'
alias gpush='git push'
alias gbr='git branch'
alias gco='git checkout'
alias gcp='git cherry-pick'
alias gfetch='git fetch'
alias gcm='gitmoji -c'

# Ruby on Rails
alias bi='bundle install'
alias be='bundle exec'

# Docker
alias dc='docker-compose'

# peco系
## ブランチを簡単切り替え。 ex: git checkout lb
alias -g lb='`git branch | peco --prompt "GIT BRANCH>" | head -n 1 | sed -e "s/^\*\s*//g"`'
## dockerコンテナに入る
alias de='docker exec -it $(docker ps | peco | cut -d " " -f 1) /bin/bash'