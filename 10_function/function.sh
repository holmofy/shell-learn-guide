#!/bin/sh

hello() {
    if [[ -n $1 ]]; then
        echo "Hello, $1!"
    elif $#
    else
        echo "Hello, World!"
    fi
    return 0
}

hello 
hello holmofy