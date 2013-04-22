" config of vimwiki

" project config
" path and markdown
if has("win32")
let g:vimwiki_list = [{'path': 'd:/github/notes/wiki',
                \ 'diary_rel_path': 'diary'},
                \ {'path': 'd:/netbook/wiki',
                \ 'diary_rel_path': 'diary'},
                \ {'path': 'd:/vimwiki_test/wiki'}]
else
let g:vimwiki_list = [{'path': '/media/document/blog/notes/wiki',
                \ 'diary_rel_path': 'diary'},
                \ {'path': '/media/document/netbook/wiki',
                \ 'diary_rel_path': 'diary'},
                \ {'path': '~/vimwiki_test/wiki'}]
endif


" compile
autocmd filetype vimwiki nmap <F5> <Plug>Vimwiki2HTML
autocmd filetype vimwiki nmap <F4> :VimwikiAll2HTML

" todo-list
" mark or unmark
autocmd filetype vimwiki nmap <F2> <Plug>VimwikiToggleListItem
" show marked items in other color
let g:vimwiki_hl_cb_checked = 1
" folding
autocmd filetype vimwiki set foldmethod=indent
autocmd filetype vimwiki set foldlevel=1

" use wiki title format
let g:vimwiki_hl_headers = 1

" do not create temp repo when un-versioned .wiki detected
let g:vimwiki_global_ext = 0

" no menu
let g:vimwiki_menu = ''

" suite for chinese character
let g:vimwiki_CJK_length = 1

