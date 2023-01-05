---
title: A quick tag editor for my website
header: A quick tag editor for my website
description: Yeah, I keep adding new scripts to make my blogging life easier. In this case, to help me edit tags with less hassle.
tags: tutorial coding bash vim
permalink: /blog/a-quick-tag-editor-for-my-website/
layout: post
date: 2023-01-05 09:08:43 -0500
host: fosstodon.org
username: joel
com_id: 109637626137604618
---

I have a bit of a love hate relationship with bash scripting. Because you get to have access to all kinds of small tools, piping and doing unixy things, at the cost of having horrible syntax and being kinda hard to read sometimes.


Anyways, a couple posts ago I shared how to sort tags in different ways, the truth is I've been meaning to do some cleaning up, inspired by [Adam's post](https://www.adamsdesk.com/posts/clean-tags-categories-two/).

He used the usual commands such as `sed` and `grep`, and I decided to quickly write a script to edit the desired tags for any file in a similar manner.

```bash
#!/usr/bin/bash
#
file=$1
oldtags=$(cat $1 | grep "tags:" | head -1 | awk '{for (i=2; i<NF; i++) printf $i " "; print $NF}')

echo $oldtags > /tmp/tagedit
vim /tmp/tagedit

newtags=$(cat /tmp/tagedit)

rm -fv /tmp/tagedit

sed -i "s/$oldtags/$newtags/g" "$file"
```

This code is rather simple, it takes the path of a file, which is given as an argument, running something like 

```
./edit-tags.sh filename
```

That filename is parsed, using grep, head and awk. a new temporary file containing all existing tags of that file gets opened with vim, containing the existing tags. From there I can add or remove tags as I please, and once saved, I replace the original file accordingly.

It is rather simple, and I think it could be done better. So please, I beg you to give me any suggestions to improve it. I tried my best to understand stuff like `getopts` and the like, to have arguments and flags but I just didn't really get it.



