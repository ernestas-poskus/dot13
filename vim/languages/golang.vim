autocmd FileType go setlocal tabstop=4 softtabstop=4 shiftwidth=4
autocmd FileType go set listchars=tab:▸\ ,
autocmd BufWritePost,FileWritePost *.go execute 'GoLint' | cwindow

silent !mkdir -p ~/.golang > /dev/null 2>&1

let g:go_snippet_engine = "neosnippet"
let g:go_bin_path = expand("~/golang")

au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap gd <Plug>(go-def)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
