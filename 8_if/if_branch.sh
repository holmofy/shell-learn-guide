#!/bin/sh
# https://serverfault.com/questions/52034/what-is-the-difference-between-double-and-single-square-brackets-in-bash/52050#52050

v=3

if [ $v -eq 1 ]; then
    echo "if branch";
elif [ $v -ne 3 ]; then
    echo "elif branch";
else
    echo "else branch";
fi

v=world
if [ "$hello" = "hello" ]; then
    echo "if branch";
elif [ "$hello" != "world" ]; then
    echo "elif branch";
else
    echo "else branch";
fi