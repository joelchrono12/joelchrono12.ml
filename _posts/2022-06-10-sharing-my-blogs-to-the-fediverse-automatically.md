---
title: Sharing my blogs to the Fediverse automatically
header: Sharing my blogs to the Fediverse automatically
description: I always share my blogposts on Mastodon when I am done writing them, but it has always been a little annoying to do so. Not anymore.
tags: blog tutorial coding bash linux git webdev blog
permalink: /blog/sharing-my-blogs-to-the-fediverse-automatically/
layout: post
date: 2022-06-10 20:00:34 -0500
host: benign.town
username: joel
com_id: 108456248971546724
---

There are many problems that come when you don't use some CMS like Wordpress or Ghost, and this is one of them. When I [chose Mastodon as commenting system for my blog]({{ site.url }}/blog/how-to-add-mastodon-comments-to-jekyll-blog/) I realized it would be quite a process to share my post and get the comment section working. I had already [automated the blog creation process]({{ site.url }}/blog/rofi-automated-blog/), but I still had to do all this:

- finish writing
- git add, git commit, git push
- write toot on mastodon sharing my blogpost
- copy toot link
- paste toot link id on original blogpost
- git add, git commit, git push
- comments section now works!

However, I decided to summon the power of the command line and bash scripting once again, and I finally managed to automate pretty much all of it.

It depends on some basic tools such as `sed`, `cut`, `grep`, but it also requires a very simple mastodon client for the command line, `toot`, you probably have it all installed already, and toot is not hard to setup either way.

There really is not a lot to talk about other than this. Here is the script, its not really super clean or anything (any suggestion are absolutely welcome) but at least its serviceable.

```bash
#!/usr/bin/bash

if git rev-parse --git-dir > /dev/null 2>&1; then
    : # This is a valid git repository

    # All markdown files start with YYYY-MM-DD
    lastpost=$(/usr/bin/ls ${markdown_posts_folder}/*.md | sort -r | head -n 1) 
    getdesc=$(grep "description:" $lastpost | cut -d " " -f2-)
    geturl=$(grep "permalink:" $lastpost | cut -d " " -f2-)
    gettags=$(grep "tags:" $lastpost | cut -d " " -f2- | sed -r 's/([^ ]+)/#\1/g')
    post=$(echo -e "${getdesc} \n\n{{ site.url }}/${geturl} \n\n${gettags} #blogpost")
    posturl=$(toot post "$post" | cut -d/ -f5)
    echo $posturl
    sed -i "s/commentsid/$posturl/g" "$lastpost"

    git add *
    git commit -m "automatically added comments"
    git push

    exit

# directory may not be the top level.
# Check the output of the git rev-parse command if you care
else
    : # this is not a git repository
    echo "Run this inside of website folder"
    exit

fi
```

There you go, I hope you find it useful, maybe you can improve it even further. If so, make sure to let me know, I am still learning these things.
