---
title: You should use SSHFS
header: You should use SSHFS
description: Just a short post appreciating the usefulness of SSHFS
tags: emulation linux software
permalink: /blog/you-should-use-sshfs/
layout: post
date: 2024-05-13 22:40:05 -0600
host: fosstodon.org
username: joel
com_id: idcomments
---

So during my adventures setting up my Miyoo Mini Plus, one of its most neat features has been its ability to connect to it via SSH and FTP, at least with Onion OS installed.

FTP seems to work decently well, but the protocol itself comes with its limitations, at least for my usecase.

I have been working on [creating my own artwork for the games](https://fosstodon.org/@joel/112437467439485151) I have in my device, using a 360x250 template for the box size to take almost half the screen on the Miyoo, [So far so good!](https://fosstodon.org/@joel/112434703125234901).

Because of the SSH functionality built-in, I don't need to power off the device, remove the SD card, plug it in, drag and drop and the eject the sd card and power the thing back on.

All I need is to run:

```
sshfs onion@miyoo.ip.address:/home/SDCARD/ /whatever/mounting/directory/
```

And there I go, access the files from there.

Another neat thing is that the files behave almost exactly as if it was all just a regular folder.

On FTP for example, image thumbnails don't show up, and I can't really run commands inside those folders as quickly.

With SSHFS, thumbnails load correctly, to the system is just a folder with pictures like every other.

With SSHFS I can stream whatever video file I want from my server, and do a bunch of other normal file system things do. It doesn't feel like anything weird is happening, it doesn't feel like its special or super cool. But it just works

This is day 45 of [#100DaysToOffload](https://100daystooffload.com) and post 13 of [#WeblogPoMo2024](https://weblog.anniegreens.lol/weblog-posting-month-2024).
