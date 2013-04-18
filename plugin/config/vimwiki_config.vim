" config of vimwiki

" project config
" path and markdown
let g:vimwiki_list = [{'path': '/media/document/notes',
                \ 'syntax': 'markdown', 'ext': '.md'},
                \ {'path': '~/vimwiki_test/',
                \ 'syntax': 'markdown', 'ext': '.md'}]


" todo-list
" mark or unmark
nmap <F2> <Plug>VimwikiToggleListItem
" show marked items in other color
let g:vimwiki_hl_cb_checked = 1
