#!/bin/bash
set -eu

filepath=$1
qfilepath=${filepath//\\/\\\\}   # Quote backslashes.
qfilepath=${qfilepath//\"/\\\"}  # Quote doublequotes.

file=${qfilepath##*/}            # Remove the path.

stats=($(stat -c "%s %W %Y" "$filepath"))
size=${stats[0]}
ctime=$(date --date @"${stats[1]}" +'%d/%m/%Y %H:%M:%S')
mtime=$(date --date @"${stats[2]}" +'%d/%m/%Y %H:%M:%S')

md5=$(md5sum < "$filepath")
md5=${md5%% *}                   # Remove the dash.

printf '"%s","%s",%s,%s,%s,%s\n' \
    "$file" "$qfilepath" "$size" "$ctime" "$mtime" $md5
