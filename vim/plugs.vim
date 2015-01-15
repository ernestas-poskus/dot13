" ========================================
" Vim Plug loader
" ========================================
call plug#begin('~/.vim/plugged')

for fpath in split(globpath('~/dot13/vim/plugs/', '*.plug'), '\n')
  exe 'source' fpath
endfor

call plug#end()
