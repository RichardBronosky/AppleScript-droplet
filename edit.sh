#!/usr/bin/env bash

if [[ ! -d $1 ]]; then
    echo Pass the name of the app you want to edit.
    echo Try...
    cd "$(dirname $0)"
    ls -d1 *.app
    exit 1
fi

open -b com.apple.ScriptEditor2 $1
