set nocompatible        " Use Vim defaults instead of 100% vi compatibility

if has("syntax")
    syntax on
endif

if has("autocmd")
    filetype plugin indent on
endif

" encoding
set fileencodings=utf-8,gb18030,gbk " open file with
" set encoding=utf-8  " vim cache encoding
" set fileencoding=utf-8 " save file with

set backspace=indent,eol,start  " more powerful backspacing
" tabs
set tabstop=4 " tab width 
set shiftwidth=4 " width of nested tabs
set expandtab " input spaces instead of tab when typing a tab
set softtabstop=4 " 1. space deleted when typing <BackSpace>
" show tabs
set listchars=tab:>.
set list

" show line number
set nu

" copy and paste is unavailable if uncommented
if has('mouse')
    set mouse=a
endif
" set clipboard+=unnamed

" infomative status line
" format, by default, vim does not show the status line at all.
set statusline=%F%m%r%h%w\[FORMAT=%{&ff}]\[TYPE=%Y]\[POS=%04l,%04v][%p%%]\[LEN=%L] 
" always shown, shown as the second last line in the editor window
set laststatus=2 " 

set history=50      " keep 50 lines of command line history

set tags=tags;  " search tags files from current dir/father dir/and so on
                " current dir is the dir where vim started

" python coding env
let g:flake8_ignore="E302,E501"
autocmd BufWritePost *.py call Flake8()

" js
" 打开javascript折叠
let b:javascript_fold=1
" 打开javascript对dom、html和css的支持
let javascript_enable_domhtmlcss=1
setlocal foldlevel=1
