SOURCE := $(CURDIR)
TARGET := $(HOME)
FILES := bash_profile bashrc functions gitconfig gitignore inputrc screenrc slate.js zshrc zshenv

UNAME := $(shell uname)

all: clean install

install_tmux:
	@ln -sf $(CURDIR)/tmux-$(UNAME).conf $(TARGET)/.tmux.conf
	@ln -sf $(CURDIR)/tmux.conf $(TARGET)/.tmux-all.conf

clean_tmux:
	@-unlink $(TARGET)/.tmux.conf
	@-unlink $(TARGET)/.tmux-all.conf

install_dotfiles:
	@for f in $(FILES); do \
		ln -sf $(SOURCE)/$$f $(TARGET)/.$$f; \
	done
	@ln -sf $(SOURCE)/oh-my-zsh $(TARGET)/.oh-my-zsh
	@ln -sf $(SOURCE)/bin $(TARGET)/

clean_dotfiles:
	@-for f in $(FILES); do \
		unlink $(TARGET)/.$$f; \
	done
	@-unlink $(TARGET)/.oh-my-zsh
	@-unlink $(TARGET)/bin

install: install_dotfiles install_tmux

clean: clean_tmux clean_dotfiles
