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
filetype plugin indent on
syntax enable
execute pathogen#infect()

let g:tagbar_position = 'topleft vertical'
let g:tagbar_iconchars = ['▸', '▾']
let g:tagbar_width = 42
let g:tagbar_sort = 0

let g:minimap_auto_start = 0

" Navigation
noremap <C-t> :tabe
noremap <C-n> :bnext<CR>
noremap <C-p> :bprevious<CR>

" F-Keys
noremap <silent> <F5> :!make
noremap <silent> <F8> :TagbarToggle<CR>
noremap <silent> <F9> :NERDTreeToggle<CR>

" Commands
command DEspell :setlocal spell spelllang=de
command ENspell :setlocal spell spelllang=en
command Q :wq
command W :wall
