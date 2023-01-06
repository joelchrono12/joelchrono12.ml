---
title: Return to the Void
header: Return to the Void
description: After some fun times with EndeavourOS, I decided to distrohop once again to Void Linux, and finally, once and for all, get rid of Windows, for good.
tags: foss linux distro review ramble dotfiles
permalink: /blog/return-to-the-void/
layout: post
date: 2021-12-20 15:51:16 -0500
host: fosstodon.org
username: joeligj12
com_id: 107481773058885318
---
Back when [I left Void Linux]({{ site.url }}/blog/switching-distro-ending-school/), I did so because of a couple of reasons:

First, it was a school assignment, I would win some extra points and I was already willing to make the move. But also, I was pretty dumb and couldn't figure out printing, as well as some graphical issues, where the screen would blink and glitch seemingly at random.

# Endeavour OS is great

I really enjoyed my time using Endeavour, it was a really easy to use distribution that provided me with everything I needed out of the box. I was finally able to enjoy a pretty minimal, yet usable Arch configuration, I had everything working almost perfectly, and if something was going wrong it was usually just me being dumb and setting some config incorrectly.

I may go back to this distro in the future, or even finally give a change to pure Arch in my machine, since I found it all pretty smooth and it was always fun to have updates waiting for me almost everyday.

# The problem

My main problem has nothing to do with Endeavour or Arch itself, its just an AUR package that required an old Python version, and prevented me from updating my system once Python got an update. There where some comments in the AUR website, but it seems like it can't be easily fixed until the maintainer decides to step up.

Another slight problem was just the amount of stuff I felt was not needed by me. For example, Endeavour OS comes packaged with a lot of small terminal utilities that can do everything from changing wallpapers, checking for updates, making logs and such. All of these had small dependencies that were quite annoying, because I didn't really use them. A lot of those packages depended on each other too, and it was difficult to get rid of them all.

But, being honest, I guess the main reason I left Endeavour was because I was no longer able to update it, which is kind of the whole point.

# Letting go of my early tether

I have went with many distros for a while now. But something they all had in common was that all of them were dual-booted alongside Windows, and of course, all of them had broken bootloaders at least once in their lifetime, because of some random Windows update.

Funnily enough, as soon as I was done backing up my files and config files to a second hard drive, I rebooted to Windows to do the same to the files I had there. Then rebooted once more, for a second check on my Linux site, and *voila*, my bootloader was gone.

Frustrated, I decided to just go for it and plug my USB drive, change the boot order and install Void alone, once and for all.

# Void everywhere

Have you ever heard of Guru Laghima?, he was a wise man, who wrote something I decided to apply here:

> "New growth cannot exist without first the destruction of the old."

I ran the `void-install` script, an ncurses screen showed up, I configured everything. It was finally the point of no return, the partitions had to be wiped and reset, I also finally made a new, separate `/home` partition, and wrote the changes.

Endeavour was gone, Windows was gone, and even some files I forgot to back up, were also, gone.


But you know what, that is completely fine, as Guru Laghima once said:

> "Let go your earthly tether. Enter the void. Empty and become wind"


With nothing installed, I was finally born again, Void was even more beautiful than I remembered, there were a lot of new things and the packages available have grown quite a bit. There are still some problems here and there, but in the end, I know everything is going to be alright.

This has been day 64 of [#100DaysToOffload](https://100DaysToOffload.com)

{% include reply.html %}
