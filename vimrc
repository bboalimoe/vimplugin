set nocompatible        " Use Vim defaults instead of 100% vi compatibility

if has("syntax")
    syntax on
endif

if has("autocmd")
    filetype plugin indent on
endif

" encoding
set encoding=utf-8  " vim cache encoding
set fileencodings=utf-8,gb18030,gbk " open file with
set fileencoding=utf-8 " save file with

set backspace=indent,eol,start  " more powerful backspacing
" tabs
set tabstop=4 " tab width 
set shiftwidth=4 " width of nested tabs
set expandtab " input spaces instead of tab when typing a tab
set softtabstop=4 " 1. space deleted when typing <BackSpace>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
    set mouse=a
endif

set history=50      " keep 50 lines of command line history
