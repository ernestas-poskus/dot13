# CTags generator
generatectags()
{
  mkdir -p ~/.ctags
  cd ~/dot13/ctags && pwd
  ctags -R --exclude=.git --exclude=log $1
}