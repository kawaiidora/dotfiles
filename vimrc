vim9script

call plug#begin('~/vimfiles/plugged')
Plug 'rakr/vim-two-firewatch'
call plug#end()


if has('clipboard')
	set clipboard=unnamed
endif

set background=light
colorscheme two-firewatch

set number # display line number
set colorcolumn=80 # display ruler at 80 char
set guioptions= # remove all gui elements like toolbar and scrollbar
set guicursor+=a:blinkon0 # disable cursor blink
filetype indent plugin on # indent profile per filetype
