vim9script 

# set no compatible with vi
set nocompatible

# using vim-plug
call plug#begin('~/vimfiles/plugged')
Plug 'brglng/vim-im-select' # input method handling
Plug 'morhetz/gruvbox' # color scheme
Plug 'itchyny/lightline.vim'
Plug 'nvie/vim-flake8' # flake8 python checker integration
call plug#end()

# use system clipboard
if has('clipboard')
    set clipboard=unnamed
endif

g:im_select_get_im_cmd = '~\vimfiles\im-select.exe'
# g:im_select_default = '1033' # 1033 is for English keyboard under English US
g:im_select_default = '2052' # 2052 is for English keyboard under Chinese
g:im_select_enable_for_gvim = 1 # enable im-select for gvim

# enable lightline
set laststatus=2
set noshowmode # disable built-in mode hint because lightline shows
g:lightline = { 'colorscheme': 'gruvbox' }

g:gruvbox_bold = 0
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
# autocmd BufWritePre * :%s/\s\+$//e
set number # display line number
set colorcolumn=80 # highlight column no.80
set guioptions= # remove all gui elements
set guicursor+=a:blinkon0 # disable cursor blink

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

# problematic
# def StripTrailingWhitespaces()
#     let l = line(".")
#     let c = col(".")
#     %s/\s\+$//e
#     call cursor(l, c)
# enddef 

# autocmd BufWritePre * :StripTrailingWhitespaces()

# highlight ExtraWhitespace ctermbg=red guibg=red 
