# http://www.linuxjournal.com/content/downloading-entire-web-site-wget
function websave() {
  # The options are:
  # --recursive: download the entire Web site.
  # --domains website.org: don't follow links outside website.org.
  # --no-parent: don't follow links outside the directory tutorials/html/.
  # --page-requisites: get all the elements that compose the page (images, CSS and so on).
  # --html-extension: save files with the .html extension.
  # --convert-links: convert links so that they work locally, off-line.
  # --restrict-file-names=windows: modify filenames so that they will work in Windows as well.
  # --no-clobber: don't overwrite any existing files (used in case the download is interrupted and resumed).
  # --reject specify comma-separated lists of file name suffixes/patterns

  wget \
      --recursive \
      --page-requisites \
      --html-extension \
      --convert-links \
      --no-parent \
      --reject gif,jpg,jpeg,png,pdf,xml,ico,txt \
      --domains $1 \
      $2
}
