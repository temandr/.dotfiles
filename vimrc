" Separate Vi from Vim
set nocompatible

"-- vim-plug Stuff
call plug#begin()
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Pprovost/vim-ps1'
call plug#end()
let g:deoplete#enable_at_startup = 1

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

let mapleader="," " change the leader 

" Disable the fucking bells
set noeb vb t_vb=
au GUIEnter * set vb t_vb=

" Tabbing stuffff
set tabstop=4
set shiftwidth=4
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

" stop repeating comments to new lines
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"FZF stuff
:noremap <Leader>. :GitFiles<cr>
:noremap <Leader>/ :Files<cr>

"Nvim stuff
if has("nvim")
  :tnoremap <Esc> <C-\><C-n>
endif
