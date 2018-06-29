export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# User configuration
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/usr/local/bin:/opt/local/bin:/opt/local/sbin:$PATH

# Virtual Envs
export WORKON_HOME=$HOME/.virtualenvs
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
	. /usr/local/bin/virtualenvwrapper.sh
fi

# Aliases
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# PATHS
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:$HOME/work/packer # add packer io
PATH=$PATH:$HOME/work/terraform

export GOPATH=$HOME/work/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

# source  ~/powerlevel9k/powerlevel9k.zsh-theme
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

## History file configuration
HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=10000

## History command configuration
setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt inc_append_history     # add commands to HISTFILE in order of execution
setopt share_history # share command history data

export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'
