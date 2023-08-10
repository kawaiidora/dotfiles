vim9script 

# no compatible with vi
set nocompatible

# using vim-plug
call plug#begin('~/vimfiles/plugged')
Plug 'morhetz/gruvbox' # color scheme
Plug 'itchyny/lightline.vim'
Plug 'nvie/vim-flake8' # flake8 python checker integration
call plug#end()

# use system clipboard
if has('clipboard')
    set clipboard=unnamed
endif

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
set number # 显示行号
set colorcolumn=80 # 在第80字符处显示边界线
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
