" General editor configuration
set softtabstop=4
set shiftwidth=4
set expandtab
set linespace=0

set number
set nu rnu
set mouse=a
set smartindent

" Plugin management
filetype plugin on
syntax enable
execute pathogen#infect()

" Navigation
noremap <C-t> :tabe
noremap <C-n> :bnext<CR>
noremap <C-p> :bprevious<CR>

" F-Keys
noremap <silent> <F5> :!make

" Commands
command DEspell :setlocal spell spelllang=de
command ENspell :setlocal spell spelllang=en
command Q :wq
command W :wall
