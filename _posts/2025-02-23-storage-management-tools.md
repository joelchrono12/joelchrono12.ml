---
title: Managing my storage with gdu and czkawka
header: Managing my storage with gdu and czkawka
description: I think the actual terminal tool I use the most is my disk usage tool, so I just wrote about it
tags: linux software foss
permalink: /blog/storage-management-tools/
layout: post
date: 2025-02-23 16:23:17 -0600
host: fosstodon.org
username: joel
com_id: 114055756184672562
---
Of course that stuff like [neovim](https://neovim.io/) or [bat](https://github.com/sharkdp/bat) are my most used tools in general, but one category of tool that I have used consistently over the years has been that of disk usage management.

My go to on the terminal is [gdu](https://github.com/dundee/gdu), a disk usage analyzer similar to ncdu, which usually comes by default in some distros.

It's a super simple tool that will sort folders by size and show the percentage used by each folder, no big deal, it does what it does and it does it very well, I've been using it a lot when handling my roms and game files for my [RG35XXSP](/blog/the-gba-experience-i-wanted/) and the iso files of my PSP games. Sometimes my laptop starts to fill up and emptying the trash can doesn't cut it.

Another great tool is [Czkawka](https://github.com/qarmin/czkawka), it is a great program to find duplicate and similar files and pictures across multiple folders. This one has a pretty simple GUI that lets you visualize the files and choose multiple parameters to make sure only the files you need are kept and the rest deleted.

Back when I used my Raspberry Pi as a server, I had Nextcloud setup to sync with my computer, so once the Pi died I used Czkawka to clean up my storage from useless screenshots and other pics from my phone.

It has been a while since I've written about any kind of neat Linux tools so it's nice to change it up for once.

Maybe this is all a sign that I should really look into upgrading my internal storage on my computer, it's been a little tight lately.

I almost scrapped this post since it's about such a simple thing! But well, it may be useful for some people out there. Besides, it's always interesting to see what other people use and why! 

There's probably someone who will say what's the alternative to gdu but written in Rust, or what is like czkawka but terminal only, or maybe someone made a rofi script to handle this on a whim, share what you use!

This is day 21 of [#100DaysToOffload](https://100daystooffload.com).
