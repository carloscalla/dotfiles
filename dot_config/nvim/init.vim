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
" Plug 'fannheyward/telescope-coc.nvim'
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

Plug 'tpope/vim-repeat'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'https://tpope.io/vim/commentary.git'
Plug 'mbbill/undotree'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/vim-jsx-improve'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'vuciv/vim-bujo'
Plug 'tpope/vim-surround'
Plug 'justinmk/vim-sneak'
Plug 'rbgrouleff/bclose.vim'
" Plug 'francoiscabrol/ranger.vim'
Plug 'mattn/emmet-vim'

Plug 'theprimeagen/vim-be-good'

" Plug 'norcalli/nvim-colorizer.lua'
Plug 'nvim-lualine/lualine.nvim'
" Plug 'sbdchd/neoformat'

Plug 'akinsho/toggleterm.nvim'
Plug 'tami5/lspsaga.nvim'
Plug 'onsails/lspkind-nvim'

call plug#end()

colorscheme gruvbox

" PLUGIN REMAPS

" Telescope
" Using lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
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


" " Coc - Conquer of Completion
" set cmdheight=2
" set updatetime=300
" set shortmess+=c

" " Use tab for trigger completion with characters ahead and navigate.
" " NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" " other plugin before putting this into your config.
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

" " Use <c-space> to trigger completion.
" if has('nvim')
"   inoremap <silent><expr> <c-space> coc#refresh()
" else
"   inoremap <silent><expr> <c-@> coc#refresh()
" endif

" " Make <CR> auto-select the first completion item and notify coc.nvim to
" " format on enter, <cr> could be remapped by other vim plugin
" inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
"                               \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" " Use `[g` and `]g` to navigate diagnostics
" " Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
" nmap <silent> [g <Plug>(coc-diagnostic-prev)
" nmap <silent> ]g <Plug>(coc-diagnostic-next)

" " GoTo code navigation.
" nmap <silent> <leader>gd <Plug>(coc-definition)
" nmap <silent> <leader>gy <Plug>(coc-type-definition)
" nmap <silent> <leader>gi <Plug>(coc-implementation)
" nmap <silent> <leader>gr <Plug>(coc-references)

" " Use K to show documentation in preview window.
" nnoremap <silent> K :call <SID>show_documentation()<CR>

" function! s:show_documentation()
"   if (index(['vim','help'], &filetype) >= 0)
"     execute 'h '.expand('<cword>')
"   elseif (coc#rpc#ready())
"     call CocActionAsync('doHover')
"   else
"     execute '!' . &keywordprg . " " . expand('<cword>')
"   endif
" endfunction

" " Highlight the symbol and its references when holding the cursor.
" autocmd CursorHold * silent call CocActionAsync('highlight')

" " Symbol renaming.
" nmap <leader>rn <Plug>(coc-rename)

" " Applying codeAction to the selected region.
" " Example: `<leader>aap` for current paragraph
" xmap <leader>a  <Plug>(coc-codeaction-selected)
" nmap <leader>a  <Plug>(coc-codeaction-selected)

" " Remap keys for applying codeAction to the current buffer.
" nmap <leader>ac  <Plug>(coc-codeaction)
" " Apply AutoFix to problem on the current line.
" nmap <leader>qf  <Plug>(coc-fix-current)

" " Map function and class text objects
" " NOTE: Requires 'textDocument.documentSymbol' support from the language server.
" xmap if <Plug>(coc-funcobj-i)
" omap if <Plug>(coc-funcobj-i)
" xmap af <Plug>(coc-funcobj-a)
" omap af <Plug>(coc-funcobj-a)
" xmap ic <Plug>(coc-classobj-i)
" omap ic <Plug>(coc-classobj-i)
" xmap ac <Plug>(coc-classobj-a)
" omap ac <Plug>(coc-classobj-a)

" " Remap <C-f> and <C-b> for scroll float windows/popups.
" if has('nvim-0.4.0') || has('patch-8.2.0750')
"   nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
"   nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
"   inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
"   inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
"   vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
"   vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
" endif

" " Add `:Format` command to format current buffer.
" command! -nargs=0 Format :call CocAction('format')

" " Add `:Fold` command to fold current buffer.
" command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" " Add `:OR` command for organize imports of the current buffer.
" command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" " Add (Neo)Vim's native statusline support.
" " NOTE: Please see `:h coc-status` for integrations with external plugins that
" " provide custom statusline: lightline.vim, vim-airline.
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}



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


" Lualine
" lua require("lualine").setup()


" Ranger
" let g:ranger_map_keys = 0
" map <leader>rr :Ranger<CR>


" Colorizer
" lua require'colorizer'.setup()

" nvim-cmp
set completeopt=menu,menuone,noselect


" Theme OceanicNext
" Or if you have Neovim >= 0.1.5
" if (has("termguicolors"))
"  set termguicolors
" endif

" Theme
" syntax enable
" colorscheme OceanicNext

" colorscheme NeoSolarized
" set background=dark

