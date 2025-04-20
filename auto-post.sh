#!/usr/bin/bash

if git rev-parse --git-dir > /dev/null 2>&1; then
    : # This is a valid git repository

    ./fetch_openring.sh

    # All markdown files start with YYYY-MM-DD
    lastpost=$(/usr/bin/ls ~/Documents/git/joelchrono12.ml/_posts/*.md | sort -r | head -n 1) 
    getdesc=$(grep "description:" $lastpost | cut -d " " -f2-)
    #geturl=$(grep "permalink:" $lastpost | cut -d " " -f2-)
    #geturl=$(basename $lastpost | sed -E 's/^([0-9]{4}-[0-9]{2}-[0-9]{2})-(.*)\.md$/\1-\2\//')
    geturl=$(grep "permalink:" $lastpost | cut -d " " -f2-)
    #gettags=$(grep "tags:" $lastpost | cut -d " " -f2- | sed -r 's/([^ ]+)/#\1/g')
    post=$(echo -e "$1\n\nhttps://joelchrono.xyz${geturl}")
    posturl=$(toot post "$description $post" | cut -d/ -f5)
    echo $posturl
    sed -i "s/idcomments/$posturl/g" "$lastpost"

    git add *
    git commit -m "new post, with comments"
    git push

    exit

# directory may not be the top level.
# Check the output of the git rev-parse command if you care
else
    : # this is not a git repository
    echo "Run this inside of website folder"
    exit

fi

