---
title: My Static Site Workflow (2023)
header: My Static Site Workflow (2023)
description: How I managed to come up with a static site workflow, using Vim and bash scripts, a response
tags: jekyll blog webdev
permalink: /blog/my-static-site-workflow/
layout: post
date: 2023-02-27 13:56:29 -0600
host: fosstodon.org
username: joel
com_id: 109938904113012486
---

This is obviously inspired by Kev Quirk's [latest](https://kevquirk.com/my-static-site-workflow/) post,
I decided that, instead of a replying via email,
I can just share with everyone my own way of doing these things. 
I have already talked about how I deal with many of the shortcomings of static site generators,
In my case, Jekyll.

To kick things off, I will share how I fix the problems mentioned by Kev's article, one by one!
Here they are:

1. Easily insert links to my other posts
2. Drag & drop images into posts
3. ~~Preview my posts without running a local server~~ (I don't care about this one)
4. Publish with a single command/button click

# Inserting link to other posts

Following the same logic as Kev, 
as long as I have the link in my clipboard, I have these couple of lines in my vim config

```vim
nnoremap <Leader>3 ciw[<C-r>"]()<Esc>
vnoremap <Leader>3 c[<C-r>"]()<Esc>
nnoremap <Leader>4 ciw[<C-r>"](<Esc>"*pli)<Esc>
vnoremap <Leader>4 c[<C-r>"](<Esc>"*pli)<Esc>
```

These keybindings will add the Markdown syntax for a link.
Be it for a single word (when in normal mode) or in selected text (in visual mode).
Pretty handy!

# Drag and drop images into posts

I already talked about this in a previous post,
which happened to _also_ be a response to Kev.

In short, I just right click the image from my file manager (Thunar),
click the prompt in the right-click menu, paste my clipboard content on VIM, and call it a day.

The script does the following:

1. Prompt rofi to add a title/caption to the image
2. Optimize image using ImageMagick's `convert`
3. Copy the image to my assets folder
4. Generate a WEBP version of the image
5. Copy the text to add it to my post easily

Here it is, in case you are interested.

{% raw %}
```bash
#!/bin/bash

### AIJK (Add image to Jekyll)
### By joelchrono12

pic=$1
name=$(rofi -l 0 -width 50 -p "Title" -dmenu)
filen=$(echo $name | tr " ,.!" "-"| awk '{print tolower($0)}')
today=$(date +"%Y-%m-%d")
filename=($today-$filen)
path=/home/chrono/git/joelchrono12.ml #without / at the end
imgs=/assets/img/blogs/ #example = /assets/img/blogs/
#last_post=$(/bin/ls ${path}/_posts/*.md | sort -r | head -n 1)

convert $1 -quality 75 ${path}${imgs}${filename}.png
cwebp -q 85 ${path}${imgs}${filename}.png -o ${path}${imgs}${filename}.webp

#printf "\n![${name}](${imgs}${filename}.png)"
printf "\n{%% include img.html image='${imgs}${filename}.png' caption='${name}' %%}" | xclip -selection clipboard
```
{% endraw %}

The last line uses a Jekyll include, I commented a simpler version using regular Markdown syntax if you only need that. You can check why I use an include [here]({{ site.url }}/blog/vim-macros-and-jekyll-includes/).

If you want you can also [check the full post]({{ site.url }}/blog/add-images-to-markdown-files-(for-jekyll)) about adding images to Jekyll, to learn how to use the script properly.

# Single command publishing

As I stated, I don't particularly care about previewing my posts in real time. So, how do I publish my posts with a single command?

Again, I already wrote about this a few times, but here's my current implementation of the script:

It also shares my blog to Mastodon and gets the toot id to enable comments for that blogpost. You can learn how to add comments to your static site using Mastodon in [this post](https://www.joelchrono12.xyz/blog/add-images-to-markdown-files-(for-jekyll)/).

```bash
#!/usr/bin/bash
# Run at root directory of website

# All markdown files start with YYYY-MM-DD
lastpost=$(/usr/bin/ls ~/git/joelchrono12.ml/_posts/*.md | sort -r | head -n 1) 
#getdesc=$(grep "description:" $lastpost | cut -d " " -f2-)
geturl=$(grep "permalink:" $lastpost | cut -d " " -f2-)
#gettags=$(grep "tags:" $lastpost | cut -d " " -f2- | sed -r 's/([^ ]+)/#\1/g')
post=$(echo -e "$1\n\nhttps://joelchrono12.xyz${geturl}")
posturl=$(toot post "$post" | cut -d/ -f5)
echo $posturl
sed -i "s/109938904113012486/$posturl/g" "$lastpost"

git add *
git commit -m "new post, with comments"
git push

exit
```

# More tools!

Here is a link of different posts I've done to fix the following problems!

- [Create new posts automatically]({{ site.url }}/blog/rofi-automated-blog/)
- [Sorting tags by name and post quantity]({{ site.url }}/blog/sorting-tags-in-jekyll/)
- [Quick tag editing]({{ site.url }}/blog/a-quick-tag-editor-for-my-website/)
- [Editing URLs (without breaking old ones)]({{ site.url }}/blog/change-urls-without-breaking-old-links/)
- [Jekyll collections]({{ site.url }}/blog/using-jekyll-collections-to-share-origami.html)
- [Sort blog archive by month and year]({{ site.url }}/blog/changing-blog-sorting/)

I should probably make a tag for this specific topic, I haven't done a great job separating these tutorials from the rest. For now, you can check the [jekyll](/tags/jekyll), [coding](/tags/coding) and [tutorial](/tags/tutorial) tags in case something interests you.

You can always check this [website's source code](https://github.com/joelchrono12/joelchrono12.ml) or message me in case you want help with something!

This is day 41 of [#100DaysToOffload](https://100daystooffload.com)
{% include reply.html %}
