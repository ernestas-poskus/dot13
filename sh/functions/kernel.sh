function kernel_diff_patch() {
  diff -uprN <(git show HEAD^:$1) $1
}
