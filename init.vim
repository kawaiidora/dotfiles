vim9script
# use vim9script, all comments are below code

set nocompatible
# set no compatible with vi

## vim-plug ##################################################################
call plug#begin('~/vimfiles/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
# autocomplete, this plugin requires nodejs
Plug 'ntpeters/vim-better-whitespace'
# highlight trailing whitespaces
Plug 'yorickpeterse/vim-paper'
# color scheme
Plug 'itchyny/lightline.vim'
# status line displays filename, mode, encoding, cursor_position, etc.
Plug 'erik-j-d/lightline-paper'
# lightline theme, for vim-paper

if has('win32')
    Plug 'stillwwater/wincap.vim'
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

## coc-nvim ##################################################################
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
# use enter key to confirm completion

# pip install pyright
# :CocInstall coc-pyright
## coc-nvim ##################################################################

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
g:lightline = { 'colorscheme': 'paper' }
## lightline #################################################################
colorscheme paper
set background=light

if has('gui_running')
    set guifont=Sarasa\ Mono\ SC:h12
    # set guifont=Consolas:h11
    # for windows 7
    set lines=50 columns=90
endif


if has('termguicolors')
    set termguicolors
endif

set number
# display line number
set colorcolumn=80
# highlight column at 80th character
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
