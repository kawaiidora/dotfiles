vim9script 
# 使用新版vim语言

# 不与vi兼容
set nocompatible

# 使用vim-plug管理插件
call plug#begin('~/vimfiles/plugged')
Plug 'sainnhe/everforest'
Plug 'sheerun/vim-polyglot'
call plug#end()

# 使用系统剪贴板
if has('clipboard')
    set clipboard=unnamed
endif

# 主题
syntax on
colorscheme everforest
set background=light
g:everforest_background = 'soft'
# g:everforest_better_performance = 1
# g:everforest_enable_italic = 0
g:everforest_disable_italic_comment = 1
if has('termguicolors')
    set termguicolors
endif

# autocmd BufWritePre * :%s/\s\+$//e
set number # 显示行号
set colorcolumn=80 # 在第80字符处显示边界线
set guioptions= # 移除工具栏、滚动条等不必要元素，使gvim只留下标题栏
set guicursor+=a:blinkon0 # 关闭光标闪烁
filetype indent plugin on
var tab_indent_size = 4
set expandtab # 将tab转换成空格
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
