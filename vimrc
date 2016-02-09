" Separate Vi from Vim
set nocompatible

"-- vim-plug Stuff
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'kien/ctrlp.vim'
call plug#end()

"-- General Settings
set backspace=indent,eol,start	" enable the fucking backspace
set ruler	" ruler on the bottom
set number	" show line numbers
set showcmd	" used to show number of characters highlighted
set incsearch	" search while typing
set hlsearch	" highlight what you search
"set relativenumber " relative numbering

syntax on	" enable syntax processing

set mouse=a	" enable the mouse

" Disable the fucking bells
set noeb vb t_vb=
au GUIEnter * set vb t_vb=

" Tabbing stuffff
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Open new split panes to right and bottom
set splitbelow
set splitright

" color theme
colorscheme gruvbox
set background=dark

" use the capital version of characters to save sometimes
:command WQ wq
:command Wq wq
:command W w
:command Q q

" use the semi-colon to start a command
:nnoremap ; :

