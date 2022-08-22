" SECTION general sets
filetype plugin indent on 
scriptencoding utf-8
set encoding=utf-8

set wildmenu

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

set exrc
set guicursor=
set number relativenumber
set hidden
set noerrorbells

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set nowrap
set undofile
set undodir=~/.config/nvim/.undo//
set backupdir=~/.config/nvim/.backup//
set directory=~/.config/nvim/.swp//

set splitbelow
set splitright

set ignorecase
set smartcase
set smartindent
set scrolloff=4
set signcolumn=yes

set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set hlsearch
set laststatus=2
set statusline=%f%m%r%h%w%a%=\ [%Y]\ [%{&ff}]\ [%l,%v]\ [%p%%]\ [%L]
set inccommand=split

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" colorscheme desert

set list
" set listchars=eol:¬,tab:\ \ 
" set listchars=eol:↩,tab:>·,trail:~,extends:>,precedes:<,space:·
set listchars=eol:↩,tab:<·>
" set listchars=eol:⟲,tab:<·>

let mapleader = " "

" SECTION remaps
nnoremap <leader>so :source $MYVIMRC<CR>
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
nnoremap <leader># :e#<CR>

nnoremap <leader>wh <C-W>h
nnoremap <leader>wj <C-W>j
nnoremap <leader>wk <C-W>k
nnoremap <leader>wl <C-W>l
nnoremap <leader>ww <C-W>w
nnoremap <leader>wL <C-W>L
nnoremap <leader>wH <C-W>H
nnoremap <leader>wK <C-W>K
nnoremap <leader>wJ <C-W>J
nnoremap <leader>wq <C-W>q


nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

map [[ ?{<CR>w99[{:noh<CR>
map ][ /}<CR>b99]}:noh<CR>
map ]] j0[[%/{<CR>:noh<CR>
map [] k$][%?}<CR>:noh<CR>


" from TJ

if has('nvim')
  tnoremap <Esc> <C-\><C-n>
endif

" Clears hlsearch after doing a search, otherwise just does normal <CR> stuff
nnoremap <expr> <CR> {-> v:hlsearch ? ":nohl\<CR>" : "\<CR>"}()

nnoremap <Up> <C-y>
nnoremap <Down> <C-e>
" Switch between tabs
nnoremap <Right> gt
nnoremap <Left>  gT

" inoremap <S-CR> <C-O>o
" inoremap <C-CR> <C-O>O


call plug#begin(stdpath('data') . '/plugged')

Plug 'gruvbox-community/gruvbox'
" Plug 'mhartington/oceanic-next'
" Plug 'overcache/NeoSolarized'

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'jremmen/vim-ripgrep'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope-file-browser.nvim'

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

Plug 'windwp/nvim-autopairs'
Plug 'windwp/nvim-ts-autotag'

Plug 'tpope/vim-repeat'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'https://tpope.io/vim/commentary.git'
Plug 'mbbill/undotree'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'vuciv/vim-bujo'
Plug 'tpope/vim-surround'
Plug 'justinmk/vim-sneak'
Plug 'rbgrouleff/bclose.vim'
Plug 'mattn/emmet-vim'

Plug 'theprimeagen/vim-be-good'

Plug 'norcalli/nvim-colorizer.lua'
Plug 'nvim-lualine/lualine.nvim'
" Plug 'sbdchd/neoformat'

Plug 'akinsho/toggleterm.nvim'
Plug 'glepnir/lspsaga.nvim'
Plug 'onsails/lspkind-nvim'

Plug 'lewis6991/gitsigns.nvim'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'folke/trouble.nvim'

" Plug 'neoclide/vim-jsx-improve'
" Plug 'MaxMEllon/vim-jsx-pretty'

call plug#end()

colorscheme gruvbox

" PLUGIN REMAPS

" Telescope
" Using lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>pf <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>ls <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>gs <cmd>lua require('telescope.builtin').git_status()<cr>
nnoremap <leader>tq <cmd>lua require('telescope.builtin').quickfix()<cr>
nnoremap <leader>tc :Telescope<SPACE>
nnoremap <leader>fb :Telescope file_browser<cr>


" NERDTree
nnoremap <leader>nt :NERDTreeToggle<CR>
nnoremap <leader>fi :NERDTreeFind<CR>
nnoremap <leader>fo :NERDTreeFocus<CR>

" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

" let g:NERDTreeIgnore = ['^node_modules$']


" Undotree
nnoremap <leader>u :UndotreeToggle<CR>


" RipGrep
nnoremap <leader>ps :Rg<SPACE>

if executable('rg')
  let g:rg_command='rg --vimgrep -S'
endif


" Dev Icons
lua require("carlos")


" Bujo
nmap <leader><CR> <Plug>BujoAddnormal
" imap <leader><CR> <Plug>BujoAddinsert
nmap <leader><BS> <Plug>BujoChecknormal
" imap <leader><BS> <Plug>BujoCheckinsert


" Prettier
nmap <Leader>pp <Plug>(Prettier)


" nvim-cmp
set completeopt=menu,menuone,noselect


if (has("termguicolors"))
 set termguicolors
endif

