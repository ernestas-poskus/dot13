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

function head_headers() {
  curl -X HEAD -L -v -D - -o /dev/null $@
}

function curl_status() {
  format="STATUS %{http_code} ELAPSED %{time_total} URL ${url_effective} ||| redirect: %{time_redirect} namelookup: %{time_namelookup} connect: %{time_connect} appconnect: %{time_appconnect} pretransfer: %{time_pretransfer} starttransfer: %{time_starttransfer}\n"
  curl -s -L -w "$format" -o /dev/null $1
}
