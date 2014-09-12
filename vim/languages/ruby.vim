autocmd FileType ruby,eruby setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" Rails
nnoremap ,vv :Rview<cr>
nnoremap ,cc :Rcontroller<cr>

" Rspec
function! ChangePendingRspecToXit()
  " Find the next occurrence of pending
  while(search("pending(") > 0)
    " Delete it
    normal dd
    " Search backwards to the it block
    ?it\s
    " add an 'x' to the 'it' to make it 'xit'
    normal ix
  endwhile
endfunction

nnoremap <silent> ,rxit :call ChangePendingRspecToXit()<cr>

" insert a before { } block around a line
nnoremap <silent> \bf ^ibefore { <esc>$a }
