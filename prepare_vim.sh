#!/bin/bash

# get my configuration file
wget -O ~/.vimrc https://raw.githubusercontent.com/ano1413/backup/master/dotfiles/.vimrc

if [ -d "~/.vim" ]; then
	mkdir ~/.vim/{autoload,bundle}
fi

# Define a list of subfolder for vim plugins
autopairs=~/.vim/bundle/auto-pairs
vim_snipmate=~/.vim/bundle/vim-snipmate
ctrlp=~/.vim/bundle/ctrlp


# Install pathogen.vim 
if [[ ! -f ~/.vim/autoload/pathogen.vim ]]; then
    wget -P ~/.vim/autoload/ https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
fi

# Install autopair
if [[ ! -d $autopairs ]]; then
    git clone git://github.com/jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pairs
fi

# Install snipmate
if [[ ! -d $vim_snipmate ]]; then
    git clone https://github.com/tomtom/tlib_vim.git ~/.vim/bundle/tlib_vim
    git clone https://github.com/MarcWeber/vim-addon-mw-utils.git ~/.vim/bundle/vim-addon-mw-utils
    git clone https://github.com/garbas/vim-snipmate.git ~/.vim/bundle/vim-snipmate
    git clone https://github.com/honza/vim-snippets.git ~/.vim/bundle/vim-snippets
fi

# Install ctrlp
if [[ ! -d $ctrlp ]]; then
    git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp
fi

