"Configurations
syntax enable
set relativenumber
set noerrorbells
set hidden
set ts=4
set sw=4
set ai ts=4 sw=4 et
set nobackup
set incsearch
set hlsearch
set noswapfile
set clipboard=unnamedplus
set clipboard+=unnamedplus
set smartindent
set autoindent
set laststatus=2
set noshowmode
set termguicolors


"Plugings
call plug#begin('~/.vim/plugged')
Plug 'mhartington/oceanic-next'
Plug 'turbio/bracey.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'dracula/vim'
Plug 'dylanaraps/wal.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'rbgrouleff/bclose.vim'
Plug 'ptzz/lf.vim'
Plug 'tomasiser/vim-code-dark'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
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
let mapleader = " "
nnoremap <leader>t :terminal<CR>
autocmd filetype cpp nnoremap <F4> :!g++ -std=c++14 %<CR>
autocmd filetype cpp nnoremap <F5> :term ./a.out<CR>
nnoremap <C-H> :noh<CR>
nnoremap <C-c><C-e> :CocEnable<CR>
nnoremap <C-c><C-d> :CocDisable<CR>
nnoremap <C-S> :w<CR>:source %<CR>
nnoremap <C-Q> :q<CR>
nnoremap <C-P> :Rg<CR>
nnoremap <C-F> :Files<CR>
nnoremap <C-B> :Buffers<CR>
inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}
nnoremap <C-n> :NERDTreeToggle<CR>


"Pluging settings
"let g:molokai_original = 1
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ }
let g:rehash256 = 1
let g:gruvbox_contrast_dark="hard"

"setting colorscheme
set background=dark
colorscheme gruvbox

"if I want to use transparency
hi Normal guibg=NONE ctermbg=NONE 

