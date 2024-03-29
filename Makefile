DOTFILES := $(shell pwd)
PACKAGES := $(shell cat ${DOTFILES}/brew)

install: install-vim \
         install-tmux \
         install-git \
         install-shell

install-brew:
	for f in ${PACKAGES}; \
        	do brew install $$f; \
	done

install-shell:
	ln -fs ${DOTFILES}/.bashrc ${HOME}
	ln -fs ${DOTFILES}/.bash_profile ${HOME}
	ln -fs ${DOTFILES}/.config.d ${HOME}

install-vim:
	rm -rf ${HOME}/.vim
	ln -fs ${DOTFILES}/.vim ${HOME}
	mkdir -p ${HOME}/.vim/swap
	ln -fs ${DOTFILES}/.vimrc ${HOME}

install-tmux:
	ln -fs ${DOTFILES}/.tmux.conf ${HOME}

install-git:
	brew install git hub
	ln -fs ${DOTFILES}/.gitconfig ${HOME}
	ln -fs ${DOTFILES}/.gitignore ${HOME}
