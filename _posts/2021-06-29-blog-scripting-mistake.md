---
title: Scripting mistakes and tilde communities
header: Scripting mistakes and tilde communities
description: Playing around with a static site generator I found out a mistake that messed up my Markdown experience, and I did not even noticed until now while trying to build a website on tilde.cafe!
tags: foss coding linux 
permalink: /blog/blog-scripting-mistake/ 
layout: post 
date: 2021-06-29 17:50:26 -0500
host: fosstodon.org 
username: joeligj12 
com_id: 106508311181665121
---

Up until now I have been using Neovim to write my blog posts, and it has been working wonderfully, as far as I could tell. However, something got my attention recently. 

I have been playing around with `blop`, a static site generator written in bash that uses pandoc, sed and other simple utilities to generate a blog. I have decided to give it a chance in a new site I got because I joined a tilde pubnix.

What even is a pubnix or a tilde you might ask? Well, its kinda like a shared computer where you can log into using SSH. There are a lot of communities like that and you can checkout some of them by visiting the [Tildeverse website](https://tildeverse.org)

I decided to join to [tilde.cafe](https://tilde.cafe). I got accepted a few days after I made my request, and it has been a great experience so far.

Coming back to the mistake I mentioned before, neovim offers some neat syntax highlighting by default, and I enjoy to have it not only for Markdown but most other programming and markup languages that I use every now and then.

But Markdown was not working somehow, and I did not know why, it was *kinda* working, but headers were showing up as if they were comments, with a gray coloring since I use the Nord color scheme, which made them harder to read.

But I just thought I had some weird plugin and I never really tried to fix it, since the rest of things worked as intended for the most part.

It was not until I used `blop` to with my current posts that I noticed that most of them were not working. There is some simple templating, and only the header and footer showed up without any of the content. I spent a lot of time messing around with the metadata on top of it, which is kinda  different from Jekyll. Like this:

```
---
author: Me
title: Title
summary: A summary
date: YY-MM-DD HH:MM
---
```

But there is something that is not noticeable at all, an extra space at the end of the last dash, which came from my good old rofi script, that has a line like this:

```
echo -e "# Previous metadata ...  \n--- ">> $path/$filename.md
```

And as you can see, that little space in the end was messing it all up. The `sed` command used in the bash script was not finding the last `"---"` and it just went through the whole blog. After removing all of those spaces, everything started to work as intended, and now I have a new website, which is a mirror of this one, using my tilde.cafe domain, and you can [visit it here](https://chrono.tilde.cafe)

This is day 46 of [#100DaysToOffload](https://100DaysToOffload.com)
