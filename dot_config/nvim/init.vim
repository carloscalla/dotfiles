" SECTION general sets
filetype plugin indent on 
scriptencoding utf-8
set encoding=utf-8

set wildmenu

let undo_dir = expand('~/.config/nvim/.undo')
" create the directory and any parent directories
" if the location does not exist.
if !isdirectory(undo_dir)
    call mkdir(undo_dir, "p", 0700)
endif

let backup_dir = expand('~/.config/nvim/.backup')
if !isdirectory(backup_dir)
    call mkdir(backup_dir, "p", 0700)
endif

let swp_dir = expand('~/.config/nvim/.swp')
if !isdirectory(swp_dir)
    call mkdir(swp_dir, "p", 0700)
endif

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

set exrc
" set guicursor=
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
nnoremap <leader>wx <C-W>x
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
" Plug 'overcache/NeoSolarized'

Plug 'tpope/vim-fugitive' " tpope baby
Plug 'tpope/vim-repeat'
" Plug 'https://tpope.io/vim/commentary.git'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'

" Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons' " devicons for nerdtree and others
Plug 'Xuyuanp/nerdtree-git-plugin' " git file signs for nerdtree

Plug 'jremmen/vim-ripgrep'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope-file-browser.nvim'

Plug 'neovim/nvim-lspconfig' " LSP configuration
Plug 'williamboman/mason.nvim' " LSP manager
Plug 'williamboman/mason-lspconfig.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-context'

Plug 'hrsh7th/cmp-nvim-lsp' " Autocomplete
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" For vsnip users.
Plug 'hrsh7th/cmp-vsnip' " Snippets for cmp
Plug 'hrsh7th/vim-vsnip'

Plug 'windwp/nvim-autopairs'
Plug 'windwp/nvim-ts-autotag'

Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'mbbill/undotree'
Plug 'kyazdani42/nvim-web-devicons' " lua fork of vim-devicons
Plug 'vuciv/vim-bujo' " TODOs
Plug 'justinmk/vim-sneak' " Better f
Plug 'rbgrouleff/bclose.vim'
Plug 'mattn/emmet-vim'

" Plug 'theprimeagen/vim-be-good'

Plug 'norcalli/nvim-colorizer.lua' " showing colors preview for color codes
Plug 'nvim-lualine/lualine.nvim'
" Plug 'sbdchd/neoformat'

Plug 'akinsho/toggleterm.nvim'
Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' } " LSP UI
Plug 'onsails/lspkind-nvim' " vscode-like pictograms

Plug 'lewis6991/gitsigns.nvim'

Plug 'jose-elias-alvarez/null-ls.nvim' " Neovim and LSP bridge
Plug 'folke/trouble.nvim'

" Plug 'neoclide/vim-jsx-improve'
" Plug 'MaxMEllon/vim-jsx-pretty'

" Plug 'jdhao/better-escape.vim'
Plug 'folke/which-key.nvim' " Key mappings UI

Plug 'ThePrimeagen/harpoon'

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

" nerdtree-git-plugin
let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0


" Undotree
nnoremap <leader>u :UndotreeToggle<CR>


" RipGrep
nnoremap <leader>ps :Rg<SPACE>

if executable('rg')
  let g:rg_command='rg --vimgrep -S'
endif


" Bujo
nmap <leader><CR> <Plug>BujoAddnormal
" imap <leader><CR> <Plug>BujoAddinsert
nmap <leader><BS> <Plug>BujoChecknormal
" imap <leader><BS> <Plug>BujoCheckinsert


" Prettier
nmap <Leader>pp <Plug>(Prettier)


" nvim-cmp
set completeopt=menu,menuone,noselect


" this doesn't work on the mac default Terminal, use with iTerm2
if (has("termguicolors"))
 set termguicolors
endif

" iTerm2
" let &t_SI = "\<Esc>]50;CursorShape=1\x7"
" let &t_SR = "\<Esc>]50;CursorShape=2\x7"
" let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Terminal
" let &t_SI.="\e[5 q" "SI = INSERT mode
" let &t_SR.="\e[4 q" "SR = REPLACE mode
" let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)


highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10


" Moving lines up and down
" Change these mappings accordingly
" <A-j> = ∆
" <A-k> = ˚
" nnoremap ∆ :m .+1<CR>==
" nnoremap ˚ :m .-2<CR>==
" inoremap ∆ <Esc>:m .+1<CR>==gi
" inoremap ˚ <Esc>:m .-2<CR>==gi
" vnoremap ∆ :m '>+1<CR>gv=gv
" vnoremap ˚ :m '<-2<CR>gv=gv


" lua require("carlos")
