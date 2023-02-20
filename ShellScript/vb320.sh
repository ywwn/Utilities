#!/bin/bash

:<<EOF
Conver any audio to about 320k mp3 and delete img, metadate
EOF

for f in "$@"
do
    ffmpeg -y -hide_banner -i "$f" \
    -codec:a libmp3lame -q:a 2 -map 0:0 -map_metadata -1 \
    "$f"_320.mp3
done
