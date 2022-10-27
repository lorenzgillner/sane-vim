VIMPATH=${HOME}/.vim

all:
	git submodule init

install:
	mkdir -p ${VIMPATH}/autoload ${VIMPATH}/bundle
	cp thirdparty/pathogen/autoload/pathogen.vim ${VIMPATH}/autoload/pathogen.vim
	cp .vimrc ${HOME}/.vimrc
