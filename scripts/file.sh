#!/usr/bin/env bash

## No bash script should be considered releasable until it has this! ##
# Exit on use of an uninitialized variable
set -o nounset
# Exit if any statement returns a non-true return value (non-zero).
set -o errexit

## Put your script below. Don't take out the part above.
file "${@}"
