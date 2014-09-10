# CTags generator
generatectags()
{
  ctags -RV \
            --exclude='.git' \
            --exclude='log' \
            --exclude='tmp' \
            --exclude='temp' \
            $@
}
