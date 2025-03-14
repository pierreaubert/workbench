#
#                     NO PASSWORD HERE
#

export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";
export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";

eval "$(/opt/homebrew/bin/brew shellenv)"


PATH=$HOME/bin:$HOME/bin/macos:$HOME/go/bin
PATH=$PATH:/usr/local/bin:/usr/bin:/bin:
export PATH=$PATH

# Added by Toolbox App
export PATH="$PATH:/Volumes/Home/pierre/Library/Application Support/JetBrains/Toolbox/scripts"
