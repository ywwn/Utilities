#!/bin/bash

:<<EOF
Convert images to tiff with Group4 compress
EOF

for f in "$@"
do
    /usr/local/bin/convert "$f" \
    -compress Group4 \
    "$f".tiff
done
