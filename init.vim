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
nnoremap <leader>fg <cmd>Telescope git_files<cr>
nnoremap <leader>en <cmd>Telescope find_files cwd=~/.config<cr>
nnoremap <leader>ds <cmd>Telescope coc document_symbols<cr>

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'rbgrouleff/bclose.vim'
Plug 'tpope/vim-fugitive'
Plug 'nvim-lua/popup.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  
Plug 'preservim/nerdtree'
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'SirVer/ultisnips'
Plug 'natebosch/dartlang-snippets'
Plug 'honza/vim-snippets'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'fannheyward/telescope-coc.nvim'
call plug#end()

let g:gruvbox_italic=1
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_invert_selection='0'
let g:airline#extensions#tabline#enabled = 1
let g:UltiSnipsExpandTrigger="<tab>"
let g:airline_powerline_fonts = 1
set background=dark
colorscheme gruvbox
hi TelescopeBorder guifg=#5eacd


lua << EOF
require('telescope').setup{
  defaults = {
    file_sorter = require("telescope.sorters").get_fzy_sorter,
    prompt_prefix = " >",
    color_devicons = true,

    file_previewer = require("telescope.previewers").vim_buffer_cat.new,
    grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
    qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        },
    },
}
require('telescope').load_extension('fzy_native')
require('telescope').load_extension('coc')
EOF

