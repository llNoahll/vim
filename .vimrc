set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'


Plugin 'wlangstroth/vim-racket'


Plugin 'junegunn/rainbow_parentheses.vim'

" Activation based on file type
augroup rainbow_lisp
  autocmd!
  autocmd FileType lisp,scheme,racket,clojure RainbowParentheses
augroup ENDlet g:rainbow#max_level = 16

let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}'], ['（', '）'], ['【', '】']]
" List of colors that you do not want. ANSI code or #RRGGBB
let g:rainbow#blacklist = [233, 234]


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" change hjkl to ijkl.
nnoremap h i
nnoremap i k
nnoremap j h
nnoremap k j

vnoremap h i
vnoremap i k
vnoremap j h
vnoremap k j

inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <C-d> <DELETE>

" set the menu & the message to English
set langmenu=en_US
let $LANG='en_US'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" set basic configs.
colorscheme space-vim-dark
set number
set relativenumber
set guifont=Ubuntu\ Mono:h18
syntax enable
syntax on
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar</span>
set gcr=a:block-blinkon0
set encoding=utf-8

" height column and line.
set cursorcolumn
set cursorline

" set tab and indent.
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set autoindent
set smartindent
set cindent

" cancel backup.
set nobackup

" match brackets.
set showmatch
set matchtime=5

" set search.
set incsearch

" set clipboard
set clipboard=unnamed,unnamedplus
