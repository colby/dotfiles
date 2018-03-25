DOTFILES := $(shell pwd)

install: install-vim \
         install-tmux \
         install-git \
         install-shell

install-shell:
	ln -fs $(DOTFILES)/.bashrc ${HOME}/.bashrc
	ln -fs $(DOTFILES)/config.d ${HOME}/config.d

install-vim:
	brew install vim
	rm -rf ${HOME}/.vim
	ln -fs $(DOTFILES)/.vim ${HOME}/.vim
	mkdir -p ${HOME}/.vim/swap
	ln -fs $(DOTFILES)/.vimrc ${HOME}/.vimrc

install-tmux:
	brew install tmux
	ln -fs $(DOTFILES)/.tmux.conf ${HOME}/.tmux.conf

install-git:
	brew install git hub
	ln -fs $(DOTFILES)/.gitconfig ${HOME}/.gitconfig
	ln -fs $(DOTFILES)/.gitignore ${HOME}/.gitignore
