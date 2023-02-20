#!/bin/bash

:<<EOF
Conver any video to h.264
EOF

for f in "$@"
do
    ffmpeg -y -hide_banner -i "$f" \
    -pix_fmt yuv420p \
    -c:v libx264 \
    "$f"_h264.mp4
done
