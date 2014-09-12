" Plugin Settings
for fpath in split(globpath('~/dot13/vim/settings/', '*.vim'), '\n')
  exe 'source' fpath
endfor

" Language Settings
for fpath in split(globpath('~/dot13/vim/languages/', '*.vim'), '\n')
  exe 'source' fpath
endfor
