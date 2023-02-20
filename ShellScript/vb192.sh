#!/bin/bash

:<<EOF
Conver any audio to about 192k mp3 and delete img, metadate
EOF

for f in "$@"
do
    ffmpeg -y -hide_banner -i "$f" \
    -codec:a libmp3lame -q:a 4 -map 0:0 -map_metadata -1 \
    "$f"_192.mp3
done
