---
title: Add images to Markdown files (for Jekyll)
header: Add images to Markdown files (for Jekyll)
description: I decided to streamline the process of adding images to new posts quickly, how did I do it? Using bash scripts of course!
tags: tutorial coding bash linux webdev blog
permalink: /blog/add-images-to-markdown-files-(for-jekyll)/
layout: post
date: 2022-01-27 10:16:00 -0600
host: fosstodon.org
username: joel
com_id: 107695360366384300
---

So I have already done quite a lot of posts to make the creation of new posts easier. I find Jekyll to be a pretty decent static site generator, but this little script should work with whatever you got. As long as you customize it to your file structure.

The script comes as a request by [Ru](https://fosstodon.org/@celia), or at least this is what I hope she meant when [she posted](https://fosstodon.org/@celia/107694900078045072):

> Static site users who embed images frequently – what's your workflow for it? #AskFedi

Well, my *previous workflow* was simple enough:

1. Take pictures.
2. Move to assets folder.
3. Rename them to something like $date-$filename_without_spaces.png.
4. Add markdown syntax and type the whole thing.
5. Cry because you messed up the directory path.

So I went ahead and decided to work on a little script I named `aijk` (Add image to Jekyll), using bash and rofi, tools that I've used before with decent success. I am actually really happy of how it turned out.

# The script



```bash
#!/bin/bash

### AIJK (Add image to Jekyll)
### By joelchrono12

pic=$1
name=$(rofi -l 0 -width 50 -p "Title" -dmenu)
filen=$(echo $name | tr " ,.!" "-"| awk '{print tolower($0)}')
today=$(date +"%Y-%m-%d")
filename=($today-$filen)
path=/path/to/website #without / at the end
imgs=/from/site_root/to/assets/ #example = /assets/img/blogs/
last_post=$(/usr/bin/ls /path/to/markdown/files/*.md | sort -r | head -n 1)

convert $1 -quality 75 ${path}${imgs}${filename}.png

printf "\n![${name}](${imgs}${filename}.png)" >> $last_post

```

## How to use

Once added to your $PATH and making it executable, all you need is to change the required paths in the script, I think most of you will be able to figure it out on your own, but reach me out if you need help. 

You can run it just by doing this:

```
aijk file.png
```

This is how it works:

* Obtain picture file from argument.
* Add a Title to file via a rofi input.
* Create filename for file itself.
* Set paths to different required things (depends on your site).
* Get the latest markdown files from your site.
* Make changes to picture so its smaller or whatever (can be customized, requires ImageMagick).
* Print formatted markdown line to bottom of the latest markdown file.

## Adding a Graphical option for mouse users

You can run this script with absolute ease from your terminal, if that's what you want, but I also figured out a way to do it from a GUI if you are using Thunar as a file manager (might be possible with others, haven't checked).

1. Open Thunar > Edit > Configure custom actions.
2. Add a new entry for `aijk` and save it.
![Thunar configuration](/assets/img/blogs/2022-01-27-thunar-configuration.png)
4. Set the appearance conditions to images only.
3. Right click on any image to try it out!

# Final thoughts

I am not completely happy with how this works. But this is usable and easy to expand, there could be a way to select the destination file instead of just getting the latest one. But I don't normally add new images to old posts anyways, so I figured most people would be ok with how this works right now.

The script also assumes you want to start all your files with the date, and that your markdown files also start with the dates, since `sort`  will fail to place the line in the latest file, if such file is not the first in its output.

There is also no way to do this with multiple files as of now, I might be able to come up with something, I could just create another script that makes use of this one to make multiple additions at once.

Anyways, this is what I'll do now to add images, I will simply right click, click again and give them a name!. Or do it properly in the terminal, whatever fits me best.

This has been day 95 of [#100DaysToOffload](https://100daystooffload.com). Make sure to check out [Ru's website](https://rusingh.com/), since she single-handedly managed to inspire me to work on this quick script.


