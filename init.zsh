### ZSH Configuration ###
ZSHDIR=~/.zsh.d

source $ZSHDIR/general.zsh
source $ZSHDIR/aliases.zsh
source $ZSHDIR/exports.zsh
source $ZSHDIR/functions.zsh
source $ZSHDIR/antigen.zsh

# For custom, machine-dependent conf put it into custom.zsh, which is not under revision control.
if [ -f $ZSHDIR/custom.zsh ]; then
  source $ZSHDIR/custom.zsh
fi
