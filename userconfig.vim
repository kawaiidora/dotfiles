vim9script 

call plug#begin('~/vimfiles/plugged')
Plug 'rakr/vim-two-firewatch'
Plug 'morhetz/gruvbox'
call plug#end()

if has('clipboard')
    set clipboard=unnamed
endif

set background=light
syntax on
colorscheme two-firewatch

set number # display line number
set colorcolumn=80 # display ruler at 80 char
set guioptions= # remove all gui elements like toolbar and scrollbar
set guicursor+=a:blinkon0 # disable cursor blink
filetype indent plugin on # indent profile per filetype
var tab_indent_size = 4
set expandtab # convert tab to space
set tabstop=4 
set shiftwidth=4
set backup
set backupdir=C:\WINDOWS\Temp
set backupskip=C:\WINDOWS\Temp\*
set directory=C:\WINDOWS\Temp
set writebackup
