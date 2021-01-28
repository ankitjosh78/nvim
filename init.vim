syntax enable
syntax on
set relativenumber
set noerrorbells
set ts=4
set sw=4
set nobackup
set incsearch
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
Plug 'morhetz/gruvbox'
Plug 'rbgrouleff/bclose.vim'
Plug 'ptzz/lf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

nnoremap <leader>f :Lf<CR>
nnoremap <leader>t :terminal<CR>
nnoremap <F4> :!g++ %<CR>
nnoremap <F5> :term ./a.out<CR>
nnoremap <C-H> :noh<CR>
nnoremap <C-W> :w<CR>
nnoremap <C-S> :w<CR>:source %<CR>
nnoremap <C-Q> :q<CR>
colorscheme dracula
"if I want to use transparency
"hi Normal guibg=NONE ctermbg=NONE 
