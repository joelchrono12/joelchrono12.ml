---
title: More small website changes
header: More small website changes
description: I almost miss the post for today, so I wanted to at least write a listicle of some changes I've made this weekend
tags: jekyll short
permalink: /blog/more-small-website-changes/
layout: post
date: 2025-08-10 22:28:10 -0600
host: fosstodon.org
username: joel
com_id: 115008351493719697
---

I pretty much ran out of time to write something more substantial, since I spent my day doing a bunch of things, but I'll save all of that for the week notes tomorrow.

For now, I'll only do a quick list of multiple website changes I did this past week for the sake of cleaning up some stuff and making everything just a tidy bit better.

I already [did one of these ](/blog/small-website-updates/), but I guess that writing so much and using my website even more often kinda gets me inspired to fix all the little caveats I find here and there, which is pretty cool

A lot of the changes are pretty unnoticeable, but at least I know they are there, which is what matters.

Most of this is relatively non-sensical words if you are unfamiliar with Jekyll and static site generators, but it's really not a big deal.


- Implemented [microformats](https://microformats.org/) support for my main page and my articles.
- Turned the [more](/more) section into a `more.yml`, placed it on the `_data` folder and used a for loop to generate it.
- Adjusted the CSS stylesheet so the [more](/more) section looks like blocks instead of a regular list. Same class as the blogposts in the main page.
- Turned the navigation bar into a flex element, to make it more responsive, the gap between each list item is now equal.
- Added [Blogroll](/blogroll) and [RSS](/feed.xml) to the navigation bar.
- Removed the `whitespace` in between the navigation bar list elements by doing the for loop in a single line.
- Fixed and cleaned up the RSS Feed's XSL [human readable structure](/blog/improving-my-rss-feed/) which had been broken for a while.
- Made the avatar in my [about](/about) page responsive.
- Fixed the blurry favicon issues with [Real Favicon Generator](https://realfavicongenerator.net).
- Added author and permalink to the bottom of the posts template.
- Fixed the [IndieWeb Webring](https://xn--sr8hvo.ws/) setup with some extra `rel=me` link elements.
- Added some more buttons on my blogroll, and removed some dead links.

I am probably missing a couple of things, but I am pretty happy with all these changes. No long explanations this time, I just want to go sleep and get ready for tomorrow!

A new week is upon us! and [Blaugust2025](/blog/blaugust-2025) shall continue.
