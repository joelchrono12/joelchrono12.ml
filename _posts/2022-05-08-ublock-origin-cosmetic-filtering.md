---
title: Hide web elements with UBlock Origin
header: Hide web elements with UBlock Origin
description: Some websites have too much going on. And you might want to use extensions to simplify them, but you might just be able to do it using current ad-blocker
tags: tutorial internet detox
permalink: /blog/ublock-origin-cosmetic-filtering/
layout: post
date: 2022-05-08 18:35:26 -0500
host: benign.town
image: /assets/img/blogs/2022-05-08-element-blocker.webp
username: joel
com_id: 108269199539638291
---

I was really tempted to make the title of this post a bit more eye-catchy, but decided to keep it more informative. Cosmetic filtering is a great feature that most people seem to not know UBlock Origin has, even though it is the best ad-blocker around!

The name might already tell you what this feature does, but in case you don't know. Cosmetic filters allows you to hide certain sections of a website. Not only ads, but many other things. Like comment sections, sidebars or annoying pop-ups.

I decided to write this as somewhat of an answer to Ru's post about using Stylus (a tool to make custom stylesheets for websites) to [hide followers and follows in Mastodon](https://rusingh.com/hide-followers-following-on-mastodons-web-ui/). Stylus might be a little too much for such a simple thing. Besides, having less extensions is always good to make fingerprinting more difficult. 

UBlock Origin can help a lot for other use cases, I'll share my filter list at the end to give you some filters you might want to use too.

# How to use it

There are many ways to use this feature, the quickest is to simply click on UBlock's icon. Then select the color picker icon to enter in *Element Picker Mode*, then click on any part of a website, to block it, you will see the element's you choose highlighted in red, then you can click on *Create* to add it to your filters list.

![Element picker](/assets/img/blogs/2022-05-08-elementpicker.gif)

Another way that can help you be more specific or add multiple filters at a time is to go into UBlock's settings, then go to the "My Filters" tab, where you will see an empty input area, (unless you've already added some). Here you can add as many filters as you want.

Here are some of the ones I've added to my list.

```
open.spotify.com##section[aria-label="Fresh Finds"]
open.spotify.com##section[aria-label="Shows you might like"]
open.spotify.com##section[aria-label="Level up"]
open.spotify.com##section[aria-label="15 minutes or less shows"]
open.spotify.com##section[aria-label="Get creative"]
open.spotify.com##section[aria-label="Delve into the news headlines"]
open.spotify.com##section[aria-label="Shows to try"]
open.spotify.com##section[aria-label="What's trending?"]
open.spotify.com##section[aria-label="The Top Podcasts of 2020"]
open.spotify.com##section[aria-label="The Top Podcasts of 2021"]
open.spotify.com##section[aria-label="The Top Podcasts of 2022"]
open.spotify.com##section[aria-label="Episodes for you"]

! 2022-03-04 https://www.youtube.com
www.youtube.com###secondary

! 2022-03-05 https://www.youtube.com
www.youtube.com###header > .ytd-rich-grid-renderer.style-scope

! 2022-05-09 https://benign.town
benign.town##.account__header__extra__links

```

These filters make Youtube's UI much more simple, and they also hide all the annoying podcast features from Spotify's Web UI. So, I hope you find them useful.

That's all folks, let me know if you find this features useful.

