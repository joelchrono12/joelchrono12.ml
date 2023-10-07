---
title: Trying to organize audiobooks
header: Trying to organize audiobooks
description: How do I get audiobooks, split them and organize them.
tags: reading podcasts hobbies
permalink: /blog/trying-to-organize-audiobooks/
layout: post
date: 2023-10-06 21:41:33 -0600
host: fosstodon.org
username: joel
com_id: 111191873075500577
---

Almost as much as I like reading, I also love organizing my library! Getting the proper metadata for things and making sure its all nice and tidy.

When it comes to digital books, its honestly not very hard, all you need is [Calibre](https://calibre-ebook.com/) to manage everything in a really good way, it is a bit of a complicated program for some people, but once you get the gist, it only takes a couple clicks to import your books to it and download their metadata automatically.

When it comes to audiobooks though, it is a little more complex. I recently acquired a couple of audiobooks on Humble Bundle and while it was a steal for the price, I was a bit sad that when I got them, the files were very bare bones, no metadata at all, and the filenames were just a random string of numbers and the chapter numer to differentiate them. Not the best thing ever.

Thankfully, [Kid3](https://kid3.kde.org/) exists. This is the tool I use to just set the metadata of the files properly. It is designed for music but it still works really well. I like to combine it with Thunar's bulk rename tool, because Kid3 can just take its metadata from the filename and viceversa. Basically, if an audio filename is something like `Ringworlds - Larry Niven - Chapter 1.mp3` you can just use Kid3 with and "import from filename" with the format `%{album} - %{artist} - %{title}` or whatever else. It makes it all very easy.

The only troublesome thing that might show up, is you being too nitpicky and wanting to include the title of each chapter in the audio filename and metadata. If that's the case, I guess I still have some homework to do. I could probably script something to do it for me one of these days.

After all is done, all that's left is to play it! I recently found [Cozy](https://cozy.sh/), which seems like a really neat audiobook player for Linux, I will stick to listening on my phone, but I still wanted to share it if any of you're interested.

This is day 66 of [#100DaysToOffload](https://100daystooffload.com)
{% include reply.html %}
