vim9script
# use vim9script, all comments are below code

set nocompatible
# set no compatible with vi

def Win11(): bool
# detect windows version, return true if running on windows 11

py3 << endpy3
import sys, vim
def py_win11_detect():
    return sys.getwindowsversion().build >= 22000
endpy3

    return py3eval('py_win11_detect()')
enddef

## vim-plug ##################################################################
call plug#begin('~/vimfiles/plugged')
# Plug 'ervandew/supertab'
# tab completion
Plug 'ntpeters/vim-better-whitespace'
# highlight trailing whitespaces
Plug 'morhetz/gruvbox'
# color scheme
Plug 'itchyny/lightline.vim'
# status line displays filename, mode, encoding, cursor_position, etc.
Plug 'nvie/vim-flake8', { 'for': 'python' }
# flake8 python checker integration
if has('win32')
    if Win11()
        Plug 'stillwwater/wincap.vim'
    endif
endif
if !has('gui_running')
    Plug 'brglng/vim-im-select'
    # input method handling
endif
call plug#end()
## vim-plug ##################################################################

if has('clipboard')
    set clipboard^=unnamed,unnamedplus
endif
# use system clipboard

## im-select #################################################################
g:im_select_command = '~\vimfiles\im-select.exe'

g:im_select_default = '1033'
# 1033 is for English keyboard under English US
# g:im_select_default = '2052'
# 2052 is for English keyboard under Chinese
# g:im_select_enable_for_gvim = 1
# enable im-select for gvim
## im-select #################################################################

## better-whitespace #########################################################
# g:strip_whitespace_on_save = 1
# g:strip_whitespace_confirm = 0
## better-whitespace #########################################################

## lightline #################################################################
set laststatus=2
# enable lightline
set noshowmode
# disable built-in mode hint because lightline shows
g:lightline = { 'colorscheme': 'gruvbox' }
## lightline #################################################################

## gruvbox ###################################################################
g:gruvbox_bold = 0
g:gruvbox_italic = 0
g:gruvbox_contrast_light = 'hard'
g:gruvbox_contrast_dark = 'medium'
colorscheme gruvbox
set background=light

if has('gui_running')
    set guifont=等距更纱黑体\ SC:h12
    # set guifont=Consolas:h11
    # for windows 7
    set lines=50 columns=90
endif

if has('termguicolors')
    set termguicolors
endif
## gruvbox ###################################################################

set number
# display line number
set colorcolumn=80
# highlight column at 80th char
if has('gui_running')
    set guioptions=
    # remove all gui elements
    set guicursor+=a:blinkon0
    # disable cursor blink
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
