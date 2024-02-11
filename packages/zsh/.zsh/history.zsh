export HISTFILE=~/.zsh_history # save of comannds history file
export HISTSIZE=20000          # on memory history size
export SAVEHIST=20000          # save history counts
setopt hist_ignore_all_dups    # ignore duplicate command
setopt inc_append_history      # to save every command
setopt hist_reduce_blanks      # remove duplicate spaces
setopt share_history           # share history between processes