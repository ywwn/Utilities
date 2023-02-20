#!/bin/bash

:<<EOF
Conver any image to heif
EOF

for f in "$@"
do
    magick convert "$f" \
    "$f".heic
done
