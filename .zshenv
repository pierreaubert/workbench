#
#                     NO PASSWORD HERE
# 

PATH=.:$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/sbin
export PATH

# should use rvm
WHEREISRUBY=/usr/local/Cellar/ruby/2.0.0-p353/bin
export PATH=$PATH:$WHEREISRUBY

# Techradar
export PROD=/Volumes/Run
export SSO_SETTINGS=$PROD/etc/sso.conf
export USERFEEDS_SETTINGS=$PROD/etc/userfeeds.conf
export RSSFEEDS_SETTINGS=$PROD/etc/rssfeeds.conf

#PROD=/Volumes/Run
#TECHRADAR=$HOME/src/techradar/src
#export PYTHONPATH=$TECHRADAR
#export SSO_SETTINGS=$TECHRADAR/sso/cfg_dev.conf
#export USERFEEDS_SETTINGS=$TECHRADAR/userfeeds/cfg_dev.conf
#export RSSFEEDS_SETTINGS=$TECHRADAR/rssfeeds/cfg_dev.conf

# Homebrew Cask
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Virtualenv
export WORKON_HOME=$HOME/.virtualenvs

# Pip
export PIP_REQUIRE_VIRTUALENV=true
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache







