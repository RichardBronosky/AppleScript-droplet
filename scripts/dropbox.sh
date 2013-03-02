#!/usr/bin/env bash

## No bash script should be considered releasable until it has this! ##
# Exit on use of an uninitialized variable
set -o nounset
# Exit if any statement returns a non-true return value (non-zero).
set -o errexit

## Put your script below. Don't take out the part above.

# NOTICE: This depends on https://github.com/andreafabrizi/Dropbox-Uploader
uploadImage() {
  # The following command returns the same integer everytime. You should hard code it to same time.
  uid="$(dropbox_uploader.sh info | awk '/UID/{print $2}')"
  path="u"
  name="$(basename "$1")"
  dropbox_uploader.sh upload "$1" "/Public/$path/$name" >&2
  echo -n "https://dl.dropbox.com/u/$uid/$path/$(curl -Gso /dev/null -w %{url_effective} --data-urlencode "$name" "" | cut -c 3-)"
}

urls=""

for file in "${@}"; do
  echo $urls $(uploadImage "$file") | pbcopy
  urls="$(pbpaste)"
done

pbpaste
