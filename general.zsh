HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd notify correct hist_ignore_dups no_hist_beep hist_reduce_blanks interactive_comments pushd_to_home auto_list extendedglob prompt_subst nobeep appendhistory
unsetopt nomatch beep

zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit
compinit

bindkey -e
bindkey "\eOH" beginning-of-line # Home-key
bindkey "\eOF" end-of-line # End-key
bindkey "^[[1;6C" end-of-line
bindkey "^[[1;6D" beginning-of-line
bindkey "[[6C" end-of-line
bindkey "[[6D" beginning-of-line
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line
bindkey "^[OH" beginning-of-line
bindkey "^[OF" end-of-line
