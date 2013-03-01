#!/usr/bin/env bash

## No bash script should be considered releasable until it has this! ##
# Exit on use of an uninitialized variable
set -o nounset
# Exit if any statement returns a non-true return value (non-zero).
set -o errexit

## Put your script below. Don't take out the part above.
uploadImage() {
  curl -s -F "image=@$1" -F "key=486690f872c678126a2c09a9e196ce1b" http://imgur.com/api/upload.json | sed -E 's/.*"original_image":"([^"]*)".*/\1/;s?\\/?/?g'
}

urls=""

for file in "${@}"; do
  echo $urls $(uploadImage "$file") | pbcopy
  urls="$(pbpaste)"
done

pbpaste
