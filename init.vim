"Configurations
syntax enable
set relativenumber
set noerrorbells
set ts=4
set sw=4
set ai ts=4 sw=4 et
set nobackup
set incsearch
set hlsearch
set noswapfile
set clipboard=unnamedplus
set smartindent
set autoindent
set laststatus=2
set noshowmode
set termguicolors

"Plugings
call plug#begin('~/.vim/plugged')
Plug 'dracula/vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'rbgrouleff/bclose.vim'
Plug 'ptzz/lf.vim'
Plug 'tomasiser/vim-code-dark'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rust-lang/rust.vim'
Plug 'vimwiki/vimwiki'
Plug 'sickill/vim-monokai'
Plug 'arcticicestudio/nord-vim'
Plug 'ayu-theme/ayu-vim'
Plug 'rakr/vim-one'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'itchyny/lightline.vim'
Plug 'tomasr/molokai'
call plug#end()

"Key mappings
nnoremap <leader>f :Lf<CR>
nnoremap <leader>t :terminal<CR>
nnoremap <F4> :!g++ %<CR>
nnoremap <F5> :term ./a.out<CR>
nnoremap <C-H> :noh<CR>
nnoremap <C-c><C-e> :CocEnable<CR>
nnoremap <C-c><C-d> :CocDisable<CR>
nnoremap <C-S> :w<CR>:source %<CR>
nnoremap <C-Q> :q<CR>
nnoremap <C-P> :Rg<CR>
nnoremap <C-F> :Lines<CR>


"Plugings' settings
let g:molokai_original = 1
let g:lightline = {
      \ 'colorscheme': 'molokai',
      \ }
"let g:rehash256 = 1

"setting colorscheme
set background=dark
colorscheme molokai

"if I want to use transparency
"hi Normal guibg=NONE ctermbg=NONE 
