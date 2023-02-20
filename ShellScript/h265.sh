#!/bin/bash

:<<EOF
Conver any video to h.265
EOF

for f in "$@"
do
    ffmpeg -y -hide_banner -i "$f" \
    -pix_fmt yuv420p \
    -c:v libx264 \
    "$f"_h265.mp4
done
