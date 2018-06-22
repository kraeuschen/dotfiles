# -*- mode: sh -*-

# this is for OS X, because it doesn't load bashrc on each login, it
# loads bash_profile.

if [ -r ~/.profile ]; then . ~/.profile; fi
case "$-" in *i*) if [ -r ~/.bashrc ]; then . ~/.bashrc; fi;; esac
if [ -e /Users/jankrause/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/jankrause/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

#export WORKON_HOME=$HOME/code/.virtualenvs
#export PROJECT_HOME=$HOME/code
#export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
#export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
#export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'

#source /usr/local/bin/virtualenvwrapper.sh
