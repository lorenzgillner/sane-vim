" General editor configuration
set softtabstop=4
set shiftwidth=4
set expandtab
set linespace=0

set number
set nu rnu
set mouse=a
set smartindent

set termguicolors

" Plugin management
filetype plugin indent on
syntax enable
execute pathogen#infect()

" Tagbar
let g:tagbar_position = 'topleft vertical'
let g:tagbar_iconchars = ['▸', '▾']
let g:tagbar_width = 42
let g:tagbar_sort = 0

" Code minimap
let g:minimap_auto_start = 0

" Appearance
colorscheme xcodelight

" Navigation
noremap <C-t> :tabe %:h<CR>
noremap <C-n> :bnext<CR>
noremap <C-p> :bprevious<CR>
noremap <C-x> :bdelete<CR>

" Editing
noremap <silent> <CR> :Commentary<CR>

" F-Keys
" <F1> reserved for help
noremap <silent> <F2> :NERDTreeToggle<CR>
noremap <silent> <F3> :TagbarToggle<CR>
noremap <silent> <F4> :MinimapToggle
noremap <silent> <F5> :!make
" fallback
noremap <silent> <F6> :!make %
" TODO <F7> for running / preview

" Autocommands for builds (always use <F6>)
autocmd FileType c          nnoremap <silent> <F6> :!gcc -Wall -o a.out %<CR>
autocmd FileType tex        nnoremap <silent> <F6> :!latexmk -pdflua -shell-escape -synctex=1 %<CR>
autocmd FileType markdown   nnoremap <silent> <F6> :!pandoc % -o out.pdf<CR>

" Commands
command DEspell :setlocal spell spelllang=de
command ENspell :setlocal spell spelllang=en
command Q :wq
command W :wall

" Status line
let g:airline_section_z = '%p%% %l/%L:%c'
let g:airline_section_x = '%y'

" let g:airline_theme='violet'

set statusline+=%{FugitiveStatusline()}
