source $ZSHDIR/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions

antigen bundle zsh-users/zsh-autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=4" # Blue color.

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

# Will show a tip for an alias when entering a full command, if available.
# For instance, using "ls -lh" will show "Alias tip: ll".
antigen bundle djui/alias-tips

# Provides OS X special commands. Note: MUST NOT be in the OS X if-statement beneath but it will
# only set commands when on OS X!
# List of commands:
#   battery-percentage - Show the percentage of battery charge
#   battery-time - Show the estimated battery life.
#   clear-osx-font-cache - Clears the OSX font cache, originally from awesome-osx-command-line
#   column-view - Set the current directory to column view in the Finder
#   eject-all - Eject all removable disks
#   evernote - Create a new Evernote note from stdin or a file
#   finder-path - Show the path to the frontmost finder window
#   finder-selection - Show the paths to all items selected in the Finder, quoted so it copes with
#                      spaces in your directory or file names.
#   icon-view - Set the current directory to icon view in the Finder
#   kick-afp - Restart file sharing. I got tired of having to remote desktop in to kick the
#              fileserver every time Apple's file sharing got wedged
#   kick-screensharing - Sometimes screen sharing just hangs on my Mini running 10.11. This is not
#                        new to 10.11, it was exhibiting the same annoying behavior on 10.10 and
#                        10.9. The mini is headless and it's a pain in the ass to plug it into the
#                        TV just long enough to restart screen sharing, so I wrote this so I can fix
#                        it over ssh.
#   list-view - Set the current directory to column view in the Finder
#   lockscreen - lock the screen
#   mkdmg - Makes a .dmg file from a directory
#   mkicns - Creates an .icns file from an image file
#   osx-frontmost-app - Shows what application is Frontmost.
#   screen-resolution - Display the screen resolution
#   set-osx-hostname - Set the OS X name of your machine. No, sudo hostname newname isn't enough if
#                      you want the new name to be visible on the network for things like File or
#                      Screen sharing.
#   speedup-apple-mail - Speeds up Mail.app by vaccuuming the indexes - Originally from
#                        http://www.hawkwings.net/2007/03/03/scripts-to-automate-the-mailapp-envelope-speed-trick/
#   toggle-finder-show-dotfiles - Toggle whether Finder shows dotfiles
#   volume - Get/set the system volume
#   wifi-name - Returns the name of the WIFI network you're connected to
antigen bundle unixorn/tumult.plugin.zsh

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

antigen apply
