set tags=tags,./tags " first look in current dir

" hit ,f to find the definition of the current class
" this uses ctags. the standard way to get this is ctrl-]
nnoremap <silent><leader> f <c-]>

" use ,f to jump to tag in a vertical split
nnoremap <silent><leader> f :let word=expand("<cword>")<cr>:vsp<cr>:wincmd w<cr>:exec("tag ". word)<cr>
