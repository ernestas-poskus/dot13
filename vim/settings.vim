
for fpath in split(globpath('~/dot13/vim/settings/', '*.vim'), '\n')
  exe 'source' fpath
endfor
