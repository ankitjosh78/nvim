syntax enable
set relativenumber
set modifiable
set noerrorbells
set hidden
set ts=4
set sw=4
set ai ts=4 sw=4 et
set nobackup
set incsearch
set hlsearch
set noswapfile
set clipboard+=unnamedplus
set smartindent
set autoindent
set laststatus=2
set noshowmode
set termguicolors
set showtabline=2

let mapleader = " "
nnoremap <leader>t :terminal<CR>
autocmd filetype cpp nnoremap <F4> :!g++ -g -O2 -std=gnu++17 -static  %<CR>
autocmd filetype cpp nnoremap <F5> :term ./a.out<CR>
nnoremap <C-H> :noh<CR>
nnoremap <C-N> :NERDTreeToggle<CR>
nnoremap <C-S> :w<CR>:so %<CR>
inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fb <cmd>Telescope file_browser<cr>
nnoremap <leader>fp <cmd>Telescope live_grep<cr>
nnoremap <leader>fg <cmd>Telescope git_commits<cr>
nnoremap <leader>en <cmd>Telescope find_files cwd=~/.config<cr>
nnoremap <leader>ds <cmd>Telescope coc document_symbols<cr>
nnoremap n nzzzv
nnoremap N Nzzzv

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'rbgrouleff/bclose.vim'
Plug 'tpope/vim-fugitive'
Plug 'nvim-lua/popup.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'stevearc/vim-arduino'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  
Plug 'preservim/nerdtree'
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'SirVer/ultisnips'
Plug 'natebosch/dartlang-snippets'
Plug 'honza/vim-snippets'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'fannheyward/telescope-coc.nvim'
Plug 'github/copilot.vim'
call plug#end()

let g:gruvbox_italic=1
let g:airline#extensions#tabline#enabled = 1
let g:UltiSnipsExpandTrigger="<tab>"
let g:airline_powerline_fonts = 1
set background=dark
colorscheme gruvbox

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
}
EOF

