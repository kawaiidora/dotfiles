vim9script
# use vim9script, all comments are below code

set nocompatible
# set no compatible with vi

call plug#begin('~/vimfiles/plugged')
# using vim-plug
Plug 'ntpeters/vim-better-whitespace'
# highlight trailing whitespaces
Plug 'morhetz/gruvbox'
# color scheme
Plug 'itchyny/lightline.vim'
Plug 'nvie/vim-flake8', { 'for': 'python' }
# flake8 python checker integration
if !has('gui_running')
    Plug 'brglng/vim-im-select'
    # input method handling
endif
call plug#end()

autocmd FileType python map <buffer> <F3>:call flake8#Flake8()<CR>

# if has('clipboard')
#     set clipboard=unnamed
# endif
# # use system clipboard

g:im_select_command = '~\vimfiles\im-select.exe'

# g:im_select_default = '1033'
# 1033 is for English keyboard under English US
g:im_select_default = '2052'
# 2052 is for English keyboard under Chinese
# g:im_select_enable_for_gvim = 1
# enable im-select for gvim

# g:strip_whitespace_on_save = 1
# g:strip_whitespace_confirm = 0
# better-whitespace

set laststatus=2
# enable lightline
set noshowmode
# disable built-in mode hint because lightline shows
g:lightline = { 'colorscheme': 'gruvbox' }

# g:gruvbox_bold = 0
g:gruvbox_italic = 0
g:gruvbox_contrast_light = 'soft'
# g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
set background=light

if has('gui_running')
    set guifont=Consolas:h11
    set lines=42 columns=90
endif

if has('termguicolors')
    set termguicolors
endif

set number
# display line number
set colorcolumn=80
# highlight column at 80th char
if has('gui_running')
    set guioptions=
    # remove all gui elements
    set guicursor+=a:blinkon0 # disable cursor blink
endif

var mapleader = '\<space>'
# set leader key to space

filetype indent plugin on
var tab_indent_size = 4
set expandtab
set tabstop=4
set shiftwidth=4
set backup
set backupdir=C:\WINDOWS\Temp
set backupskip=C:\WINDOWS\Temp\*
set directory=C:\WINDOWS\Temp
set writebackup
