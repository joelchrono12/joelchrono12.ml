---
title: Changing the comment system and customizing this site  
header: Changing the comment system and customizing this site  
description: The past few days I have been inspired into making this site more "personal", I also decided to make my comments work using mastodon 
tags: coding linux foss  
permalink: /blog/mastodon-comments-and-changes/ 
layout: post 
date: "2021-04-08 16:52:44 -0500" 
com_id: 106032127692171891
host: fosstodon.org
comments_id: 7
username: joeligj12
--- 
Lately, as you can see, I have been adding many little details to this website, in order to make it my own even more.

Everything started with [Simple.css](http://simplecss.org "Simple.css website") as a base, you can go to that website to see how it looks by default. The first changes I did were pretty simple. Since I love the [Nord](https://nordtheme.com "Nord's website") color scheme, I just implemented those colors, then I modified some other values, and some more, then added classes, and id's, and I ended up with the current design!.

# Adding new details to my site

I did all of this to keep myself entertained and to challenge myself trying to understand CSS and HTML better, so I could eventually figure out problems by myself (and with the Internet's guidance) and design the stuff I liked.

I also have played around with the way Jekyll works, I have added tags and some HTML snippets, making use of the `_include` folder to avoid cluttering my layouts and that kind of things.

So for a few days I started checking out some blogs and websites to borrow inspiration from, and I ended up with a new footer section, as well as a new showcase area in my front page. And don't forget the new SVG icons and dividers that look awesome.

Due to the rush in inspiration, I decided to go ahead and change something I have been meaning to do for a while.

# Revamping the comments section

While GitHub comments worked nicely, I wasn't really getting a lot of activity lately. I think that happened because I didn't set them up. You see, for every new post, I had to create a new issue, and honestly, I didn't feel like it. So I just stopped having comments. Besides, most of the people who keep track of this blog are aware of Mastodon. Therefore, the path to follow was clear.

Instead of trying to actually learn some JavaScript. I decided to search for some already existing solution. so it didn't took a lot of time to find [Carl Schwan's blog ](https://carlschwan.eu/2020/12/29/adding-comments-to-your-static-blog-with-mastodon/), who already blessed me with a script that did exactly what I needed. I just had to do some changes so it works with Jekyll's syntax, so I basically changed the {% raw %}`{{ .stuff }}`{% endraw %} with {% raw %}`{{ page.stuff }}`{% endraw%}.

I also had to add those new variables to my blog metadata, which was not hard to do, since I just modified my already existing [rofi script](/blog/rofi-automated-blog) to setup my blog's metadata with a few new lines. I still have to setup the id, like on GitHub, but its easier since I already create the Fosstodon post anyways.

# Conclusion

In the end, I am very happy with the results, I am quite surprised with how my blogging journey has been. Sometimes I don't have time to do blogs, and sometimes I have too much time and do everything but blogs. But hey, today I decided to do a blog **and** implement some new features, yay!

This has been day 30 of [#100DaystoOffload](https://100daystooffload.com), thanks for reading! And don't forget to try out the new comment system, I didn't really worked too hard for it, but I still had to setup some CSS to make it look good!




{% include reply.html %}
