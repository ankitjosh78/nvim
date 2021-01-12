syntax enable
syntax on
set relativenumber
set noerrorbells
set ts=4
set sw=4
set noswapfile
set termguicolors
set clipboard=unnamedplus
set smartindent
set autoindent
set ignorecase

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim'
call plug#end()

nnoremap <F4> :!g++ %<CR>
nnoremap <F5> :term ./a.out<CR>
colorscheme dracula
hi Normal guibg=NONE ctermbg=NONE
