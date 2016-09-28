source $ZSHDIR/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions

antigen bundle zsh-users/zsh-autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=4" # Blue color.

antigen bundle sudo # ESC-ESC puts sudo in front of last cmd.
antigen bundle colored-man-pages
antigen bundle last-working-dir # shells start at last working dir.

antigen apply
