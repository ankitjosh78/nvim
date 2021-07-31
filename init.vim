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
set showtabline=2


"Plugings
call plug#begin('~/.vim/plugged')
Plug 'mhartington/oceanic-next'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
Plug 'turbio/bracey.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'fannheyward/telescope-coc.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'dracula/vim'
Plug 'dylanaraps/wal.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'rbgrouleff/bclose.vim'
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
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
call plug#end()

"Key mappings
let mapleader = " "
nnoremap <leader>t :terminal<CR>
autocmd filetype cpp nnoremap <F4> :!g++ -g -O2 -std=gnu++17 -static  %<CR>
autocmd filetype cpp nnoremap <F5> :term ./a.out<CR>
nnoremap <C-H> :noh<CR>
nnoremap <C-c><C-e> :CocEnable<CR>
nnoremap <C-c><C-d> :CocDisable<CR>
nnoremap <C-S> :w<CR>:so %<CR>
inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>ds <cmd>Telescope coc document_symbols<cr>
nnoremap <leader>fa <cmd>Telescope coc file_code_actions<cr>
nnoremap <leader>fc <cmd>Telescope coc commands<cr>
nnoremap <leader>fb <cmd>Telescope file_browser<cr>
nnoremap <leader>fp <cmd>Telescope live_grep<cr>
nnoremap <leader>fg <cmd>Telescope git_commits<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>en <cmd>Telescope find_files cwd=~/.config<cr>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap n nzzzv
nnoremap N Nzzzv


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

lua << EOF
require('telescope').setup{
  defaults = {
    prompt_prefix = "$ ",
    }
}
require('telescope').load_extension('fzf')
require('telescope').load_extension('coc')
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
    indent = {
        enable = true
      },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
}
EOF
