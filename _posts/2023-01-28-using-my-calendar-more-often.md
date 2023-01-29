---
title: Using my calendar more often
header: Using my calendar more often
description: If I am completely honest, my calendar has never really been that filled up. I usually just store my school schedule and nothing else. But I decided to change that, at least a bit.
tags: productivity short selfhost
permalink: /blog/using-my-calendar-more-often/
layout: post
date: 2023-01-28 22:19:13 -0600
host: fosstodon.org
username: joel
com_id: 109770746496253015
---

Until now I have used my calender simply to sync my school schedule, and even then, this semester I didn't do it for like 3 weeks. However, one of the few things those productivity videos I usually watch when I get into that rabbit hole, have convinced me of, is that *generally speaking*, a calendar is pretty much all you need in most "productivity systems". Some people don't like to categorize their time, and honestly, neither do I. But I decided to start adding the most basic stuff to events on my calendar, the kind of things I already *know* I *have* to do everyday, but I still forget once in a while because I get too focused on something else, ~~like writing my blog~~.

Besides, I have Nextcloud installed and I have to admit I pretty much just use it to sync my contacts and a couple of folders in my phone. I may as well just be using Syncthing, but I decided to at least put it to use a bit more, although I've also considered switching to something simpler like Baikal and freeing up some resources on my Raspberry Pi server.

So yeah, things such as feeding my dogs at a certain hour, taking a medicine, and taking out the trash, etc. I hope with time I get used to being told to do this by a notification. And who knows? maybe it becomes kinda useful for me, and if I miss doing something, I will know that its purely because I am being lazy, ~~or extremely inspired writing my blog~~.

Ultimately, I decided to play around a little more with vdirsyncer. I've been curious about any clients other than Khard and Khal that also happen to use vdirs. I discovered [Orage](https://docs.xfce.org/apps/orage/start), a super simple calendar that's a part of the XFCE family. It is super minimal, but after [a simple article I followed](https://davespagnol.wordpress.com/2019/06/28/linux-linking-orage-xfce4-desktop-to-your-google-calendar/), I got it working quite nicely. The tutorial explains how to sync with Google Calendar, but extrapolating the information and applying it with any other service is quite easy. The official documentation has a [general tutorial too](https://vdirsyncer.pimutils.org/en/stable/tutorial.html).

Eventually, my brain realized that I could just add `khal calendar` to my .bashrc to have a quick overview of my events everyday, since I open my terminal on a daily basis! Still, if you like GUI tools, you may like Orage, its super simple and minimal, it reminds me of [Claws Mail](claws-mail.org/) simplicity.

This is day 28 of [#100DaysToOffload](https://100daystooffload.com)
{% include reply.html %}
