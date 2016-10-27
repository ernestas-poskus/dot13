function curljson() {
  curl -H "Accept: application/json" -H "Content-type: application/json" $@ | jq '.'
}

# Inspect headers
# -s - Avoid showing progress bar
# -D - - Dump headers to a file, but - sends it to stdout
# -o /dev/null - Ignore response body
# -L follow redirects
function headers() {
  curl -L -v -D - -o /dev/null $@
}
