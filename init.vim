" Vim configurations syntax enable
syntax on
set relativenumber
set buftype=
set noerrorbells
set hidden
set ts=2 shiftwidth=2 expandtab
set nobackup
set incsearch
set hlsearch
set noswapfile
filetype plugin on
set clipboard+=unnamedplus
set smartindent
set autoindent
set laststatus=2
set noshowmode
set termguicolors
set showtabline=2
set colorcolumn=80
set updatetime=300

" Autosave folds
augroup remember_folds
  autocmd!
  au BufWinLeave ?* mkview 1
  au BufWinEnter ?* silent! loadview 1
augroup END

" Key mappings
let mapleader = " "
nnoremap <leader>st <cmd>lua require('telescope').extensions.tele_tabby.list(require('telescope.themes').get_dropdown())<CR>
nnoremap <leader>sb <cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown())<CR>
nnoremap <leader>bw <cmd>bwipeout<CR>
nnoremap <leader>p <cmd>bprev<CR>
nnoremap <leader>n <cmd>bnext<CR>
autocmd filetype cpp nnoremap <F4> :!g++-11 -Wall -O2 -std=c++17 %<CR>
autocmd filetype cpp nnoremap <F5> :term ./a.out<CR>
autocmd filetype cpp nnoremap <F3> :!cp template.cpp % <CR>
nnoremap <C-H> :nohl<CR>
nnoremap <C-N> :NERDTreeToggle<CR>
nnoremap <C-S> :w<CR>:so %<CR>
inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').file_browser()<cr>
nnoremap <leader>fp <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').git_files()<cr>
nnoremap <leader>gc <cmd>lua require('telescope.builtin').git_commits()<cr>
nnoremap <leader>gb <cmd>lua require('telescope.builtin').git_branches()<cr>
nnoremap <leader>gs <cmd>lua require('telescope.builtin').git_status()<cr>
nnoremap <leader>en <cmd>lua require('telescope.builtin').find_files({cwd="~/.config"})<cr>
nnoremap <leader>ds <cmd>lua require('telescope').extensions.coc.document_symbols({})<cr>
nnoremap <leader>cc <cmd>lua require('telescope').extensions.coc.commands({})<cr>
nnoremap <C-_> :lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Plugins
call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'nvim-treesitter/playground'
Plug 'Rigellute/shades-of-purple.vim'
Plug 'numToStr/Comment.nvim'
Plug 'tomasr/molokai'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'rbgrouleff/bclose.vim'
Plug 'tpope/vim-fugitive'
Plug 'nvim-telescope/telescope-github.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  
Plug 'preservim/nerdtree'
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'natebosch/dartlang-snippets'
Plug 'honza/vim-snippets'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'fannheyward/telescope-coc.nvim'
Plug 'vimwiki/vimwiki'
Plug 'mfussenegger/nvim-dap'
Plug 'nvim-telescope/telescope-dap.nvim'
Plug 'TC72/telescope-tele-tabby.nvim'
Plug 'ayu-theme/ayu-vim'
Plug 'sainnhe/gruvbox-material'
call plug#end()

" Plugins Configurations
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark = 'medium'
let g:gruvbox_material_background = 'hard'
let g:gruvbox_invert_selection='0'
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='gruvbox_material'
let g:molokai_original = 1
let g:airline_powerline_fonts = 1
set background=dark
colorscheme gruvbox-material
hi TelescopeBorder guifg=#5eacd
"highlight Normal guibg=none
"highlight NonText guibg=none

" Lua config
lua << EOF
require('telescope').setup{
  defaults = {
    file_sorter = require("telescope.sorters").get_fzy_sorter,
    prompt_prefix = "🔍",
    color_devicons = true,
    file_previewer = require("telescope.previewers").vim_buffer_cat.new,
    grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
    qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
    file_ignore_patterns = {"Library","Movies","Pictures","Music", "%.env", "%.mov", "%.png","%.pdf", "%.jpg", "%.mkv", "%.mp4", "%.ttf","%.out","node_modules",}
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
require('telescope').load_extension('gh')
require('telescope').load_extension('dap')
require('Comment').setup()
EOF


