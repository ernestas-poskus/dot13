let g:agprg='ag --column --ignore tags --ignore-dir log --ignore-dir tmp --ignore-dir solr'
nnoremap <Leader>* :Ag '<cword>'<CR>

" Open the Ag command and place the cursor into the quotes
nmap ,ag :Ag ""<Left>
nmap ,af :AgFile ""<Left>