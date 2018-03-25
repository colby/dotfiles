DOTFILES := $(shell pwd)

install: install-brew \
         install-vim \
         install-tmux \
         install-git \
         install-shell

install-brew:
	@ruby -e "$$(curl -kfsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" # NOTE: ignore SSL
	$(shell for f in $$(cat ${DOTFILES}/brew); do brew install $$f; done)

install-shell:
	ln -fs $(DOTFILES)/.bashrc ${HOME}
	ln -fs $(DOTFILES)/.bash_profile ${HOME}
	ln -fs $(DOTFILES)/config.d ${HOME}

install-vim:
	brew install vim
	rm -rf ${HOME}/.vim
	ln -fs $(DOTFILES)/.vim ${HOME}
	mkdir -p ${HOME}/.vim/swap
	ln -fs $(DOTFILES)/.vimrc ${HOME}

install-tmux:
	brew install tmux
	ln -fs $(DOTFILES)/.tmux.conf ${HOME}

install-git:
	brew install git hub
	ln -fs $(DOTFILES)/.gitconfig ${HOME}
	ln -fs $(DOTFILES)/.gitignore ${HOME}
