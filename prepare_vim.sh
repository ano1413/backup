#!/bin/bash

# get my configuration file
wget -O ~/.vimrc https://raw.githubusercontent.com/ano1413/backup/master/dotfiles/.vimrc

if [ -d "~/.vim" ]; then
	mkdir ~/.vim/{autoload,bundle}
fi


# Install pathogen.vim 
wget -P ~/.vim/autoload/ https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

# Install autopair
git clone git://github.com/jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pairs

# Install snipmate
git clone https://github.com/tomtom/tlib_vim.git ~/.vim/bundle/tlib_vim
git clone https://github.com/MarcWeber/vim-addon-mw-utils.git ~/.vim/bundle/vim-addon-mw-utils
git clone https://github.com/garbas/vim-snipmate.git ~/.vim/bundle/vim-snipmate
git clone https://github.com/honza/vim-snippets.git ~/.vim/bundle/vim-snippets

# Install ctrlp
git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp
