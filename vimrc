"================================
" Author: francis
" Sections: 
"   => Initial Plugins
"   => General Settings
"   => Display Settings
"   => Encoding Settings
"   => Others
"   => HotKey Settings
"   => Filetype Settings
"   => Theme Settings
"================================

"================================
" Initial Plugins
"================================

" change leader key
let mapleader = ','
let g:mapleader = ','

" enable syntax highlight
syntax on

" install bundles using pathogen
execute pathogen#infect()

"================================
" General Plugins
"================================

" font && size
set guifont=Monaco:h12

" history storage
set history=2000

" detect filetype
filetype on

" for different file type, use different indent method
filetype indent on

" enable auto complete
filetype plugin indent on

" auto load after file changed
set autoread
set shortmess=atI

" cancel backup, since all source code are in git/svn ..
set nobackup
set noswapfile

" create undo file
set undolevels=1000
set undoreload=10000

" keep a persistent backup file
if v:version >= 730
  set undofile
  set undodir=/tmp/vimundo/
endif

set wildignore=*.swp,*.bak,*.pyc,*.class,.svn,.git

" highlight current line
set cursorline

" leave content in shell after vim closes
" benefit: if falsely deletes something, you can retrieve it
set t_ti= t_te=

" disable mouse
set mouse-=a

" No annoying sound on errors
set title
set novisualbell
set noerrorbells
set t_vb=
set tm=500

" remember info about open bufferes on close
set viminfo^=%

" for regular expressions turn magic on"
set magic

"================================
" Display Plugins
"================================

" show current line number
set ruler

" show current typing command on status bar
set showcmd

" show current vim mode in bottom left window
set showmode

" line number higher and lower than the cursor"
set scrolloff=7

" Always show the status line - use 2 lines for the status bar
set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
set laststatus=2

" show line number
set number

" cancel newline
set nowrap

" show matched bracket
set showmatch
" How many tenths of a second to blink when matching brackets
set matchtime=2

" highlight search result
set hlsearch
" incremental search mode, search while typing
set incsearch
set ignorecase
" ignore case if search pattern is all lowercase, case-sensitive otherwise
set smartcase

" code folding "
set foldenable
" folding method "
" manual "
" indent "
" expr "
" syntax "
" diff "
" marker "
set foldmethod=indent
set foldlevel=99

" indent configuration "
set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set shiftround

"================================
" Encoding Plugins
"================================

set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5
set termencoding=utf-8

" use unix as the standard file type "
set ffs=unix,dos,mac

" if encoutering file with Unicode greater than 255 "
" no need to wait for spaces to start a new line "
set formatoptions+=m
" combine two lines of chinese, no space between "
set formatoptions+=B

"================================
" Others
"================================
" auth reload after vimrc changes"
autocmd! bufwritepost .vimrc source %

" auto complete configuration "
" let vim behave like IDE auto complete "
set completeopt=longest,menu
set wildmenu
set wildignore=*.o,*~,*.pyc,*.class

" auto close preview window after leaving insert mode"
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"================================
" HotKey Settings
"================================


"================================
" FileType Settings
"================================
" auto insert file head "
autocmd BufNewFile *.sh,*.py exec ":call AutoSetFileHead()"
function! AutoSetFileHead()
    if &filetype == 'sh'
        call setline(1, "\#!/bin/bash")
    endif

    if &filetype == 'python'
        call setline(1, "\#!/usr/bin/env python")
        call append(1, "\# encoding: utf-8")
    endif

    normal G
    normal o
    normal o
endfunc

"================================
" Theme Settings
"================================
syntax enable
colorscheme centurion

" powerline config "
set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
set t_Co=256
let g:Powerline_symbols = 'fancy'

"================================
" NerdTree Settings
"================================
" NERDTree config
map <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeIgnore=['\.pyc$','\.class$','\.bak$','\.o$']

"================================
" GitGutter Settings
"================================
let g:gitgutter_enabled=1
let g:gitgutter_sign_column_always=1

"================================
" vim-commentary settings
"================================
autocmd FileType python,ruby,shell set commentstring=#\ %s

"================================
" delimitMate settings
"================================
let b:delimitMate_expand_cr=1
set backspace=2

"================================
" jedi settings
"================================
let g:jedi#goto_assignments_command="<leader>g"
let g:jedi#goto_definitions_command="<leader>d"
let g:jedi#completions_command="<S-Space>"
let g:jedi#rename_command="<leader>r"
let g:jedi#show_all_signatures="1"
let g:jedi#completions_enabled=1
