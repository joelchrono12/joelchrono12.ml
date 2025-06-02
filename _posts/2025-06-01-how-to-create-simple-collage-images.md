---
title: How to make simple collage images
header: How to make simple collage images
description: I found a simple program to generate collages and use them as banners for my blog posts!
tags: foss webdev blog tutorial
permalink: /blog/how-to-create-simple-banner-images/
layout: post
date: 2025-06-01 17:16:17 -0600
host: fosstodon.org
username: joel
com_id: 114610863120835380
image: 'assets/img/blogs/2025-06-01-photocollages-interface.webp'
---

This really is a pretty simple problem, but I may as well share this finding here, if only for me to remember later on.

Months ago I discovered [Joshua's website](https://joshdl.substack.com), and reading one of his [media round ups](https://joshdl.substack.com/p/media-consumption-round-up-apr-25), I noticed, and really liked his little banner images, featuring a glimpse of whatever show or videogame he writes about.

I thought this was a fantastic idea, that I wanted to implement on my own website as well.

I decided to try it out for a few big blogposts early in the year, such as my yearly recap for [anime](/blog/anime-recap-2024/) and my post about [games I wish to replay soon](/blog/games-due-for-a-replay/). I thought that the style was just awesome. As in Josh's own words, it's a neat way to add photos whilst not making the page too long.

So, for those blog posts I mentioned, I just used [GIMP](https://gimp.org) and downloaded some cool images from around the web. Finding wide banner style pictures can be a little hard, but it doesn't have to be perfect anyway.

In case you are curious, I found the banners I did by looking them up in [Backloggd](https://backloggd.com) and [Anilist](https://anilist.co) respectively, since banners like those are already part of their own web design.

However, if I wanted to create a banner out of multiple images, I had to resize them, place them and try to fit everything nicely, and it was a bit tedious to do, so I wondered if there was some tool to generate a collage quickly and simply.

Sure, there are websites and online tools, but they are ridden with ads and I didn't really felt like using them.

After a quick search, I found something, and used it on [my latest monthly summary!](/blog/may-2025-summary/)

The tool in question has a pretty obvious name: 

## [PhotoCollage](https://github.com/adrienverge/PhotoCollage)

{% include img.html image='/assets/img/blogs/2025-06-01-photocollages-interface.png' caption='PhotoCollage\'s interface' %}

I installed this from the AUR pretty quickly using:

```sh
yay -S photocollage
```

This is an extremely simple tool that will allow you to make a selection of as many images as you wish, and generate a simple collage out of it. You get a couple of options, like picture resolution and border thickness, which you can set as desired.


You have a couple of buttons to regenerate the collage, which will alter the positioning and style at random.

You can also drag pictures around between each tile, as well as alter their placement within the tile, in case it's cropped weirdly.

Finally, you can save the image whenever you want, it will automatically convert them to whatever file extension you save it as. I tried png, jpg and webp without issues.

There's not much else to it, to be honest, but I thought it was worth sharing!

When it comes to a **quick way to add images to your Jekyll blog**, feel free to check out [this blogpost](/blog/add-images-to-markdown-files-(for-jekyll)).

This is day 76 of [#100DaysToOffload](https://100daystooffload.com)
