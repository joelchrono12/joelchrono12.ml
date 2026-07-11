---
title: How to turn off Calibre AI features
header: How to turn off Calibre AI features
description: I was not particularly bothered by these, but a friend was so I poked around and figured out how to hide all the AI stuff from Calibre.
tags: tutorial reading tech
permalink: /blog/disable-calibre-ai-features/
layout: post
date: 2026-03-27 16:37:45 -0600
host: fosstodon.org
username: joel
com_id: 116303942825846841
mentions:
- author: Adrián Perales
  title: Polémicas en torno a programas libres
  url: https://adrianperales.com/2026/04/polemicas-en-torno-a-programas-libres/
---

A while back [Calibre](https://calibre-ebook.com)---a book management program which I have been using for years---integrated [AI features](https://calibre-ebook.com/whats-new#:~:text=Allow%20asking%20AI%20questions%20about%20any%20book%20in%20your%20calibre%20library), in an option that showed up in the context menu, when selecting a book and clicking on *View*, titled *Discuss selected book with AI*. Clicking it opens a chat interface that connects to any "provider"---also known as *slop generator*---of your choice.

Of course, I see no use for such a useless feature, and if you don't either, here's how to hide it completely:

- Go to *Preferences* > *Plugins* > *AI provider*, select each one and click on **Enable/disable plugin**.
- Go to *Preferences* > *Tweaks*
    - Scroll all the way down until you see *Hide AI features* (You could also use the search bar for this)
    - Go to the text editor box and set the variable to `True`.
- Restart Calibre.

All the references and buttons will be gone from Calibre's interface, it's a bit of a bummer that the plugins can't be fully deleted, but hey, as they say, out of sight, out of mind.

Of course there are also some forks made due to this addition in the form of [Arcalibre](https://codeberg.org/rereading/arcalibre), as well as library management alternatives like [Booklore](https://github.com/mvanhorn/booklore/).

Personally, regular Calibre works fine and I don't really feel the need to fully switch away from it. It has been a great project for years, and since most of the alternatives are rather young and have yet to prove themselves, I am inclined to just not bother, at least for now.

This is day 41 of [#100DaysToOffload](https://100daystooffload.com)
