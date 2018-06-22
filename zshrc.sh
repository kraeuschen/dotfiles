source  ~/powerlevel9k/powerlevel9k.zsh-theme

# User configuration
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/local/bin:/opt/local/sbin:$PATH

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
