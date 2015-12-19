set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'scrooloose/nerdtree'
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin for checking syntax in code
Plugin 'scrooloose/syntastic'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Personal Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set relativenumber
set number
set tabstop=4
set smarttab
set softtabstop=4
set shiftwidth=4
set shiftround
set backspace=indent,eol,start

let g:loaded_matchparen=1 " Turn off matching () highlighting

set encoding=utf8

set clipboard=unnamed
syntax on

" NERDTree settings
map <F2> :NERDTreeToggle<CR>
map <F3> :NERDTreeFind<CR>
let g:NERDTreeMapActivateNod="<F3>"
let NERDTreeShowHidden=1

" Random key-maps
map <F5> :w  <enter>
map <F6> :q  <enter>
map <F7> :wq <enter>
" Automatically place closing curly brace two lines down and cursor between
" them
autocmd Filetype c,cpp inoremap { {<CR>}<Esc>ko
" inoremap ( ()<Esc>i

" Syntastic Setting
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
