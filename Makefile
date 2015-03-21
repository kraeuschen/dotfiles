SOURCE := $(CURDIR)
TARGET := $(HOME)
FILES := bash_profile bashrc functions gitconfig gitignore inputrc screenrc slate.js zshrc zshenv vimrc

UNAME := $(shell uname)

all: clean install

install_tmux:
	@ln -sf $(CURDIR)/tmux-$(UNAME).conf $(TARGET)/.tmux.conf
	@ln -sf $(CURDIR)/tmux.conf $(TARGET)/.tmux-all.conf
	@ln -sf $(CURDIR)/tmux-color.conf $(TARGET)/.tmux-color.conf

clean_tmux:
	@-unlink $(TARGET)/.tmux.conf
	@-unlink $(TARGET)/.tmux-all.conf
	@-unlink $(TARGET)/.tmux-color.conf

install_dotfiles:
	@for f in $(FILES); do \
		ln -sf $(SOURCE)/$$f $(TARGET)/.$$f; \
	done
	@ln -sf $(SOURCE)/oh-my-zsh $(TARGET)/.oh-my-zsh
	@ln -sf $(SOURCE)/vim $(TARGET)/.vim
	@ln -sf $(SOURCE)/bin $(TARGET)/
	@mkdir -p ~/.ssh/
	@chmod 700 ~/.ssh/
	@ln -sf $(SOURCE)/sshrc ~/.ssh/rc

clean_dotfiles:
	@-for f in $(FILES); do \
		unlink $(TARGET)/.$$f; \
	done
	@-unlink $(TARGET)/.oh-my-zsh
	@-unlink $(TARGET)/bin
	@-unlink $(TARGET)/.vim
	@-unlink $(TARGET)/.ssh/rc

install: install_dotfiles install_tmux

clean: clean_tmux clean_dotfiles
