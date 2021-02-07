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
set ignorecase
set laststatus=2
set noshowmode
set termguicolors


"Plugings
call plug#begin('~/.vim/plugged')
Plug 'dracula/vim'
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
call plug#end()

"Key mappings
nnoremap <leader>f :Lf<CR>
nnoremap <leader>t :terminal<CR>
nnoremap <F4> :!g++ %<CR>
nnoremap <F5> :term ./a.out<CR>
nnoremap <C-H> :noh<CR>
nnoremap <C-W> :w<CR>
nnoremap <C-c><C-e> :CocEnable<CR>
nnoremap <C-c><C-d> :CocDisable<CR>
nnoremap <C-S> :w<CR>:source %<CR>
nnoremap <C-Q> :q<CR>

"setting colorscheme
set background=dark
colorscheme palenight

""Colorscheme options
let g:palenight_terminal_italics=1
let g:lightline = { 'colorscheme': 'palenight' }

"if I want to use transparency
"hi Normal guibg=NONE ctermbg=NONE 
