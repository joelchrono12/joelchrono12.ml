---
title: Creating my own theme for FreshRSS
header: Creating my own theme for FreshRSS
description: So the default dark themes in FreshRSS did not convince me, so I decided to create my own.
tags: rss design personal
permalink: /blog/creating-my-own-theme-for-freshrss/
layout: post
date: 2022-01-12 11:11:41 -0600
host: fosstodon.org
username: joel
com_id: idcomments
---

This is going to be a simple post, because most of the effort I would put into writing something already went into editing some CSS files, therefore I'll write something quick explaining how it went.

As I said before, none of the dark themes included with FreshRSS were of my liking, they were a bit too warm, almost sepia, and, as a fan of Nord's color scheme, I wanted something colder and more blue-ish. I decided I would try and make my own theme, using a similar base to my blog's CSS.

Due to how FreshRSS works, I couldn't just slap my CSS file in there, I had to go and edit some classes and id's from the HTML elements that looked wrong, overlapped each other or I just felt like changing a bit.

I also had to go ahead and edit the icons, which were a but of vector based files, I just changed the fill property according to my needs.

There is still a lot of work that needs to be put into this, but I think the desktop version is already quite good, and there are only some simple glitches that I could not figure out, maybe it will need some refactoring, but I guess I'll just open source it and let somebody who wishes to put more effort into it help me.

You can find the repository [here](https://github.com/joelchrono12/freshrss-nord-theme) if you wish to install it yourself or help out too!

If you don't have GitHub or don't want to use it, feel free to use `git-send-email` too, I don't mind. You can see my theme in action here:

![Nord theme for FreshRSS](/assets/img/blogs/2022-01-12-freshrss-nord-theme.png)

If you want to know how to apply it here is a quick guide:

* Go to your public `p/` folder
* cd into `themes/`
* git clone my repository
* Go to FreshRSS' display settings
* Select my theme and apply it

This has been day 81 of [#100DaysToOffload](https://100daystooffload.com)
