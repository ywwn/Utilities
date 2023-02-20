#!/bin/bash

:<<EOF
Delete macOS zip trash 
EOF

for f in "$@"
do
        zip -d "$f" \*__MACOSX\*
        zip -d "$f" \*.DS_Store\*
done
