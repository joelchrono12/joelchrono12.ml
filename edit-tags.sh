#!/usr/bin/bash
#
file=$1

oldtags=$(cat $1 | grep "tags:" | head -1 | awk '{for (i=2; i<NF; i++) printf $i " "; print $NF}')

echo $oldtags > /tmp/tagedit-$file
vim /tmp/tagedit-$file

newtags=$(cat /tmp/tagedit-$file)

rm -f /tmp/tagedit

sed -i "s/$oldtags/$newtags/g" "$file"
