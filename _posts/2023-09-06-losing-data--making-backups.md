---
title: Losing data, making backups
header: Losing data, making backups
description: I deleted a bunch of data using the rm command, thankfully, a happy coincidence made my pain a lot more bearable
tags: linux psp tech
permalink: /blog/losing-data--making-backups/
layout: post
date: 2023-09-06 20:56:34 -0600
host: fosstodon.org
username: joel
com_id: 111021726690205411
---

I've been playing around with my psp a lot more often these days. I actually finally made my CFW permanent, after the blog I did about the software and tools I have on my device. However, a single command almost ended it all for me.

As always, [my hobbies come in waves](/blog/the-hobby-cycle/), and this is no exception. I recently had added a bunch of new roms and isos to my psp, and I had also started to back them up in my Raspberry Pi server. I was doing this in many ways, via the user interface, using a file manager and also via the good old terminal, which proved to be the best, as expected.

Maybe three weeks ago, I decided to do a full backup of my `PSP` folder, since I didn't trust my microSD card enough. The folder contains pretty much everything important to me: savedata, homebrew files, emulators, and of course, games. I backed everything up to my server using `rsync` without any problem.

Recently I wanted to do some cleaning up of unused games and launchers I had made, and I decided to delete some folders. You see, using the [game categories plugin](https://www.pspunk.com/game-categories-lite/) for my PSP lets me create, well, categories, that show up in my PSP game list. Since all of my categories have the `CAT_` prefix, I pretty much just did `rm -rf CAT_` and used Tab... The terminal is *too powerful* for me sometimes...

I ended up deleting my Emulators folder, which contained the emulators I listed on my [what's on my psp](/blog/what-is-on-my-psp/) post, as well as all my games, my save files and config.

So, if it wasn't because my past self decided to create a backup out of this, I would be emotionally in shackles.

I did lose some hours of *Metroid Zero Mission*, *Mario and Luigi Super Star Saga* and also some recently added romhacks like *A Link To The Past Redux* and *EarthBound Redux*. Thankfully, it really wasn't that bad, in the end it was only a couple bossfights and some upgrades that got lost.

I am so glad I didn't delete my PSP's `SAVEDATA` folder though, now *that* would make me cry.

Do your backups people.

This is day 58 of [#100DaysToOffload](https://100daystooffload.com)
{% include reply.html %}
