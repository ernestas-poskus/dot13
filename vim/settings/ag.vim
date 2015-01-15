" Use ag over grep
set grepprg=ag\ --nogroup\ --nocolor

" Ag settings
let g:agprg='ag --column --ignore tags --ignore-dir log --ignore-dir tmp --ignore-dir solr'

" Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
let g:ctrlp_user_command = 'ag %s -l --nocolor -g "'"

" bind \ (backward slash) to grep shortcut
" command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!


"
" Functions
"
function! GetVisual()
  let reg_save = getreg('"')
  let regtype_save = getregtype('"')
  let cb_save = &clipboard
  set clipboard&
  normal! ""gvy
  let selection = getreg('"')
  call setreg('"', reg_save, regtype_save)
  let &clipboard = cb_save
  return selection
endfunction

"grep visual selection
vnoremap K :<C-U>execute "Ag " . GetVisual()<CR>

"Grep for usages of the current file
nnoremap ,gcf :exec "Ag " . expand("%:t:r")<CR>


"
" Keybindings
"
"grep the current word using K (mnemonic Kurrent)
nnoremap <silent> K :Ag <cword><CR>

" \ - Ag shortcut
nnoremap \ :Ag<SPACE>

" Open the Ag command and place the cursor into the quotes
nmap ,ag :Ag ""<Left>

" Ag in File
nmap ,af :AgFile ""<Left>

" Ag 'word' in current path
nnoremap <Leader>* :Ag '<cword>'<CR>
