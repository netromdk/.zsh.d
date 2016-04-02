source $ZSHDIR/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle command-not-found
antigen bundle sudo # ESC-ESC puts sudo in front of last cmd.
antigen bundle colored-man-pages
antigen bundle last-working-dir # shells start at last working dir.

# Provides the 'k' command for better folder listing, including git status.
antigen bundle supercrabtree/k
alias k='k -h' # Force human-readable sizes.

# Provides 'extract' (and alias 'x') to extract a wide range of compressed files using their
# corresponding decompressor programs.
antigen bundle extract

# OS specific plugins
if [[ $CURRENT_OS == 'OS X' ]]; then
  # Gives the following commands:
  # tab           open the current directory in a new tab
  # pfd           return the path of the frontmost Finder window
  # pfs           return the current Finder selection
  # cdf           cd to the current Finder directory
  # pushdf        pushd to the current Finder directory
  # quick-look    quick Look a specified file
  # man-preview   open a specified man page in Preview
  # trash         move a specified file to the Trash
  antigen bundle osx
fi

antigen theme blinks

antigen apply
