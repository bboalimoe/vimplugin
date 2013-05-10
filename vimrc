set nocompatible        " Use Vim defaults instead of 100% vi compatibility

if has("syntax")
    syntax on
endif

if has("autocmd")
    filetype plugin indent on
endif

" encoding
" set encoding=utf-8  " vim cache encoding
set fileencodings=utf-8,gb18030,gbk " open file with
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

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
    set mouse=a
endif

" infomative status line
" format, by default, vim does not show the status line at all.
set statusline=%F%m%r%h%w\[FORMAT=%{&ff}]\[TYPE=%Y]\[POS=%04l,%04v][%p%%]\[LEN=%L] 
" always shown, shown as the second last line in the editor window
set laststatus=2 " 
set nu

set history=50      " keep 50 lines of command line history

set tags=tags;  " search tags files from current dir/father dir/and so on
                " current dir is the dir where vim started

" python coding env
let g:flake8_ignore="E302,E501"
autocmd BufWritePost *.py call Flake8()
