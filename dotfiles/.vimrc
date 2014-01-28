" Just some stupid setup for pathogen/vundle to work without problem
set nocompatible
filetype off

" Turn on light numbering
set nu

" Syntax highlighting
syntax on

" Set auto indencation
" filetype indent on
set autoindent

" Case insensitive search
set ic

" Highlight search
set hls

" Wrap text
set lbr

" Snippet??
" filetype plugin on

" Set cursorline
set cursorline

" Set listchars variable to show trailing and stuff
" set listchars=tab:».,trail:.,extends:#,nbsp:.,eol:$

set listchars=tab:▸\ ,trail:·,extends:#,nbsp:.,eol:↲

" Show white space
" set list listchars=tab:→\ ,trail:·,eol:$

" Show status bar at the end of the editor
" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04c]\ [%p%%]\ [LEN=%L]
"set statusline=%F         " Path to the file
"set statusline+=%=        " Switch to the right side
"set statusline+=%l        " Current line
"set statusline+=/         " Separator
"set statusline+=%L        " Total lines
"
"" set color for status line
"hi statusline guibg=Purple ctermfg=5 guifg=Black ctermbg=0



" set laststatus=2
					    
" Set spell checking language
""set spell
set spelllang=en,de
""colorscheme wombat


" Set guifont
set guifont=Inconsolata\ 13

" Set colorscheme
" colorscheme morning

" set 4 spaces for indentation level -> pep8 recommendation
" set smartindent
" set tabstop=4
" set shiftwidth=4
" set expandtab

" Indentation without softtab"

set expandtab
set shiftwidth=4
set softtabstop=4

" enable using mouse
set mouse=a

" Toggle between displaying white space
noremap <F9> :set list!<CR>

" Easier indentation codeblock
vnoremap < <gv 
vnoremap > >gv

" activate pathogen for plugin management, filetype plugin indent on after
" pathogen infect

execute pathogen#infect()
call pathogen#helptags()

filetype plugin indent on

" Set up vim-powerline 
let g:Powerline_symbols = 'fancy'
set t_Co=256
set laststatus=2
