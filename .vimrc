set nocompatible

"dein Scripts-------------------------------------------
if &compatible
 set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
 call dein#begin('~/.cache/dein')

 call dein#add('~/.cache/dein')
 call dein#add('Shougo/deoplete.nvim')
 call dein#add('tpope/vim-surround')
 call dein#add('tpope/vim-repeat')
 call dein#add('tpope/vim-fugitive')
 call dein#add('tpope/vim-commentary')
 call dein#add('vim-airline/vim-airline')
 call dein#add('vim-airline/vim-airline-themes')
 call dein#add('junegunn/goyo.vim')
 call dein#add('ctrlpvim/ctrlp.vim')
 call dein#add('tomtom/tcomment_vim')
 call dein#add('easymotion/vim-easymotion')
 call dein#add('airblade/vim-gitgutter')
 call dein#add('dhruvasagar/vim-table-mode')
 
 if !has('nvim')
   call dein#add('roxma/nvim-yarp')
   call dein#add('roxma/vim-hug-neovim-rpc')
 endif

 call dein#end()
 call dein#save_state()
endif

filetype plugin indent on

" If you want to install not installed plugins on startup
if dein#check_install()
  call dein#install()
endif

"End dein Scripts------------------------------------------

"  General
set relativenumber	" Show relative line numbers
set linebreak	" Break lines at word (requires Wrap lines)
set showbreak=+++ 	" Wrap-broken line prefix
set textwidth=100	" Line wrap (number of cols)
set showmatch	" Highlight matching brace
set visualbell	" Use visual bell (no beeping)
 
set hlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally
 
set autoindent	" Auto-indent new lines
set expandtab	" Use spaces instead of tabs
set shiftwidth=4	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set softtabstop=4	" Number of spaces per Tab
 
"" Advanced
set ruler	" Show row and column ruler information
 
set undolevels=1000	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour
syntax on

let g:table_mode_corner_corner='+'
let g:table_mode_header_fillchar='='
let mapleader=","

nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

imap ;so System.out.println();<left><left>
imap ;sp System.out.print();<left><left>
imap ;m public static void main(String[] args) {}<left><left>
imap ;ae ArithmeticException
imap ;ts toString();
imap ;npe NullPointerException
imap jj <esc>
