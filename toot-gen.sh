#!/usr/bin/bash

if git rev-parse --git-dir > /dev/null 2>&1; then
    : # This is a valid git repository
    lastpost=$(/usr/bin/ls ~/git/joelchrono12.ml/_posts/*.md | sort -r | head -n 1) 
    getdesc=$(grep "description:" $lastpost | cut -d " " -f2- | head -n 1)
    geturl=$(grep "permalink:" $lastpost | cut -d " " -f2- | head -n 1)
    gettags=$(grep "tags:" $lastpost | cut -d " " -f2- | sed -r 's/([^ ]+)/#\1/g' | head -n 1)
    post=$(echo -e "${getdesc} \n\nhttps://joelchrono12.xyz${geturl} \n\n${gettags} #blogpost")
    posturl=$(toot post "$post" | cut -d/ -f5)
    echo $posturl
    sed -i "s/idcomments/$posturl/g" "$lastpost"

    git add *
    git commit -m "new post $lastpost with automatically added comments"
    git push

    exit

#$(/usr/bin/ls ~/git/joelchrono12.ml/_posts/*.md | sort -r | head -n 1)

# directory may not be the top level.
# Check the output of the git rev-parse command if you care)
else
    : # this is not a git repository
    echo "Run this inside of website folder"
    exit

fi
