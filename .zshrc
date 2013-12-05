#
#                     NO PASSWORD HERE
#

# Path to your oh-my-zsh configuration.
ZSH=$HOME/Dropbox/Dotfiles/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="random"
ZSH_THEME="jonathan"

# Example aliases
alias zshconfig="jed ~/.zshrc"
alias ohmyzsh="jed ~/.oh-my-zsh"
alias mi="make install"
alias ma="make all"
alias m="make"
alias et="emacsclient -t"
alias ec="emacsclient -c"
alias j="jobs -l"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ssh-agent brew github osx tmux rsync vagrant pip python celery)

source $ZSH/oh-my-zsh.sh

# virtualenv
source /usr/local/bin/virtualenvwrapper.sh

# go (1.2)
export GOPATH=$HOME/.gocode

# pg
export PGDATA=/Volumes/Run/data/pg9.3
export PATH=$PATH:/usr/local/Cellar/postgresql/9.3.1/bin

# private keys
if [[ -f $HOME/.zshkey ]] then
   source $HOME/.zshkey
else
   print "Cannot find $HOME/.zshkey"
fi

