#!/bin/bash

if [$# -eq 0]; then
    echo -e "usage: no arg is provided.\n"
    exit 1
else


if [$# -gt 1]; then
    echo "usage: more than one arguments are provided"
    exit 1
fi

if [! -f "$1" ]; then
    echo "usage: input is not a file or it does not exist"
    exit 1
fi

if [["$1" != *.vsc]]; then 
    echo "usage: input does not have the extension .vsc"
    exit 1
fi

if [! -s "$1"]; then
    echo "usage: the file is empty – no .bin file is produced"
    exit 1
fi


