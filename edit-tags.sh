#!/usr/bin/env bash

edittags(){
    posts="/home/chrono/git/joelchrono12.ml/_posts/"
    file=$(/usr/bin/ls ${posts} | rofi -dmenu -p "Pick post")
    oldtags=$(cat ${posts}${file} | grep "tags:" | head -1 | awk '{for (i=2; i<NF; i++) printf $i " "; print $NF}')
    newtags=$(rofi -dmenu -p "Tags" -filter "$oldtags")
    sed -i "s/$oldtags/$newtags/g" "${posts}${file}"

}


edittags
