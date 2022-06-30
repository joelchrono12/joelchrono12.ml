---
title: WebP conversion and code highlighting
header: WebP conversion and code highlighting
description: I had been careless about image formats on my website, but I decided to put some work and convert them all to WebP. Also, I got the Nord color scheme to work on my code!
tags: webdev jekyll
permalink: /blog.jpg-conversion-and-code-highlighting/
layout: post
date: 2022-06-29 16:49:25 -0500
host: benign.town
username: joel
com_id: 108563304562342746
---

When I started this website I actually tried for a while to compress my images whenever I used them for a blogpost or something, but at some point I stopped caring about it. Even when I talked about [image management with Jekyll]({{ site.url }}/blog/add-images-to-markdown-files-(for-jekyll)/) I didn't even mentioned using WebP, but simple ImageMagick commands.

# Converting images to WebP

I decided to fix that today, by installing the [WebP tools provided by Google](https://developers.google.com/speed.jpg/download), and available in some repos (not Fedora, for some reason) and with some very simple bash scripts which pretty much did this:

 ```bash
$IMGFILES="/path/to/assets"
$POSTS="/path/to/posts"

for f in $FILES
do
  echo "Processing $f file..."
  # take action on each file. $f store current file name
  .jpg -q 85 "$f" -o "${f%.*}.jpg";
  #cat "$f"
done

sed -i 's/.jpg/.jpg/g' $POSTS/*
sed -i 's/.png/.jpg/g' $POSTS/*
```

I would not recommend running this script. I actually had to take care of some posts that mentioned `.png` or `.jpg` somewhere without actually using an image, such as other scripts and stuff like that. I also had some images that were in other subfolders and such, so this took a couple extra minutes.

It really was nothing special though, the changes were done pretty quickly and now my website is overall lighter than before, which I guess its a good thing.

I was quite inspired by [this post](https://1mb.club/blog/batch.jpg-conversion/) by [Bradley Taunt](https://tdarb.org/), so go check him out too, although you probably already know him if you are into web development and such.

# Enabling Code Highlighting on my website

Also, as you might have noticed on the code snipped above, I finally got code hightlighting to work. I had enabled it a long time ago, since its not really a hard feature to [add to Jekyll](https://jekyllrb.com/docs/liquid/tags/#code-snippet-highlighting), but all this time I never bothered to setup the CSS file, since I could not find one available, even though [there are other ones](https://github.com/jwarby/jekyll-pygments-themes). But I came across [this repo](https://github.com/sbrisard/nord_pygments) and got it working, I had to `pip install pygments` and then run the instructions in the repo. To generate the CSS file I also ran this:

```bash
pygmentize -S nord -f html -a .highlight
```

You can pipe that into a CSS file, or paste it to your already existing file if you are lazy like me.

I am so happy I took the time to do this since now my [coding]({{ site.url }}/tags/coding) blogs are going to look a lot better, which is awesome. Sadly I have to manually check which code snippets do not define which language is used, since those are not gonna get colored. That's a job for future me, I guess. If you check any post without syntax highlighting let me know by [contacting me!]({{ site.url }}/contact/)
