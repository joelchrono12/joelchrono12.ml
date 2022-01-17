---
title: Not distrohopping
header: Not distrohopping
description: This morning I was really annoyed at our family computer because of its graphical issues, Linux Mint seemed to have failed me, but here's what I found out
tags: personal distro short
permalink: /blog/not-distrohopping/
layout: post
date: 2022-01-16 21:12:59 -0600
host: fosstodon.org
username: joel
com_id: idcomments
---

I woke up decently early, I went ahead and decided to spend some time on our family desktop instead of the laptop I normally work on. However, I realized it had a pretty annoying problem. The screen turned black for a second and then it came back. I had recently updated its system (Linux Mint) to version 20.3, and it seemed to had worked fine, I took a timeshift backup just in case, so I planned on restoring it later once I finished some work I had to do.

First I tried to check the graphic driver settings, the desktop has a low end NVIDIA quadro card, so I assumed it could be having issues of some sort. I looked up some useful information and ideas in a few forums, but nothing seemed to be solving the issue, however, sometimes the screen would just not work even when left alone, and other, it would be fine despite heavy use. I was struggling to find some pattern that could give me any other hints at what was causing the issue.

Then I decided to change the plug. The graphics card uses mini Display Port, which is not really that great of a port, so I finally figured it might as well be the root of the issue.

And voila, the problem was solved, I was just about to try and put something like Solus OS in there, but the problem was not even that.

And I don't really know why I did not figure it out earlier. The screen didn't even showed up the monitor logo at boot or anything else, it was just barely keeping itself on.

So, today I learned that you should not jump to conclusions when you have not even tried the simplest solution there is to a problem.

This has been day 85 of [#100DaysToOffload](https://100daystooffload.com)


