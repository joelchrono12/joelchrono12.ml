---
title: Graphical settings that break things
header: Graphical settings that break things
description: Linux still has some work to do with the Desktop experience for the average user, trying to change some Region settings in my KDE desktop broke my whole workflow. But it really isn't hard to fix
tags: linux ramble
permalink: /blog/graphical-settings-that-break-things/
layout: post
date: 2022-06-10 08:49:21 -0500
host: benign.town
username: joel
com_id: idcomments
---

A few days ago I noticed a really annoying setting in Dolphin, KDE's default file manager. I noticed that the date format was not `YYYY-MM-DD`, which I tend to prefer. It looks like I can't change that in Dolphin's own settings, but only via Plasma's System Settings.


I switched to Fedora a couple weeks ago, and decided to go with the KDE spin, and use as many KDE apps as I could. I really like Dolphin, now that the dependencies, which can be annoying when using XFCE or a GTK desktop, are not really a problem since they all come built-in.

The only way to change the date format is by changing the System's region settings, there are a lot of formats but I could not find what I wanted,some time I had to give up, what a shame.

At a later point I realized that some of my apps were not working properly. Rofi would not launch with my shortcuts, Khard and Khal were showing errors. And it was due to these I realized that my locale settings were a mess. So basically my KDE settings broke my app launcher and email setup, which was pretty annoying.

Of course, all I really had to do to fix this was export the locale environment variables in my .bash_profile file and call it a day. But how is it that simple things like that can still be so messy? The Linux Desktop experience still has a long way to go.
