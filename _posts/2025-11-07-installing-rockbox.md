---
title:  Rockbox for Innioasis Y1; or, a ramble on installing stuff
header: Rockbox for Innioasis Y1; or, a ramble on installing stuff
description: I flashed Rockbox on my music player but that made me deviate about how software is installed on computers and people today don't learn about these things anymore
tags: tech ramble tutorial
permalink: /blog/rockbox-innioasis-y1-install-stuff-ramble/
layout: post
date: 2025-11-07 12:00:00 -0600
host: fosstodon.org
username: joel
com_id: commmentsid
---

I'm still playing around with the Innioasis Y1 music player, and I thought to installing [Rockbox](https://rockbox.org) on it might be a worthy endeavour.

Rockbox is an alternative software that works on lots of music players, most commonly used with modded iPods. It fulfills a similar function to what [KOReader](https://koreader.rocks) does for Kobo, Kindle and other e-readers. It's free, more powerful, more compatible, and more customizable.

**This is not a tutorial**---[here's a decent one from Reddit](https://www.reddit.com/r/innioasis/s/5NdRE90y88)---just some thoughts and observations about the whole thing thus far. Yes I am aware the [tutorial](/tags/tutorial/) tag is there.

The community developed [Innioasis Updater](https://github.com/y1-community/Innioasis-Updater)---a fork of the MTKclient for this specific device---which let's you flash the official firmware, or Rockbox, or both at once!

One of the most interesting things to me when it comes to installing random programs like this is **the barrier to entry**. Specifically, how **installations methods differ between operating systems**.

I was reading some of the comments across a few reddit posts, from people who clearly come from Windows, saying things about **drivers not working**, or how some step went wrong or how themes don't show up.

I must admit I chuckled a bit. The installation method for Linux is **not officially supported**, it basically consists in following the instructions from MTKclient's repo: Install some dependencies, run a command or two, setup a python virtual environnment (or just run `pip` as is), then run  `python ./updater.py`, and you're golden, the updater interface will show up and the process from there is self-explanatory.

I sometimes like to think Linux is usable for most people, but it's weird at moments like this, because it kind of represents how many basic things I take for granted that a normal computer user might not---even worse when people barely know how their phone works nowadays.

A newcomer would not understand what the `venv` command does (to be fair, I don't know either, but I get the idea), or why they can't find the `.rockbox` folder in their file manager.

In a way, **Linux encourages you to learn how a computer system works**. I now know what packages are, I can uninstall or install them with a simple command, they will go to a certain location and can be called in a script and be depended upon by other programs. I also know hidden folders are a thing, and that most file managers on Linux display them with a simple `Ctrl + H` or a checkbox in a right-click menu (or just an `ls -a` in the terminal of course).

I'd say it was worth learning and doing that. Even if it is more complex at first, it's better than dealing with *Next, Next, Next* install wizards and drivers that will do *who-knows-what* on *who-knows-where* in my computer. Those easy installers and countless drivers can end up being a pain. Same goes for trying to remember where the File Manager settings are, a panel (which looks straight out of 1998 as well) with a bunch of tabs and checkboxes to go through, all just to show hidden folders or file extensions.

And yet, that second option is what most people do and deal with.

What is easier then?

Obviously I am biased towards Linux. I guess I just like to bring suffering to myself or something.

Back in college I remember installing stuff like *LabVIEW*, *MATLAB* or *Code Composer*, it was absolute torture, so much so **I chose to dual-boot for many years** because of some of those programs---although I got some working on Linux at some point.

However, while the install on Windows was fine enough, they were also super bloated. *LabVIEW* would ask me to install some stuff from *National Instruments*, driver after package after plug-in. And I could not uninstall any of it from the control panel because they had to be removed from a package manager that got installed too.

When I eventually figured out [how to use LabVIEW from Linux](/blog/installing-labview-in-linux-mint-20-3/)---a couple distro-hops later or so---I was happy that at least every single thing I installed was inside the `/opt` folder, and the script was a simple `uninstall.sh` that was very pleasant to run once the semester was over.

I guess that at this point I just prefer to maybe have a harder time, while also understanding what is going on behind the curtains.

Back to Rockbox, the install went well, although I've not been too happy with the 240p version, it is recommended because it has a lot of themes, but it is too blurry or pixelated for my liking. Besides, many themes are not looking right for some reason, gotta learn some more I guess.

I think I'll install the 360p version instead, [less themes](https://github.com/rockbox-y1/themes/) but at least they're good ones, I want to try [Adwaitapod](https://github.com/D0-0K/adwaitapod/), which seems to work fine. It looks like [82Mhz](https://82mhz.net) contributed to it back in the day? Cool stuff.

Anyway, installing stuff is more fun when you are actually able to learn and understand what's going on and you can have a sense of control on everything. Wether you use Linux, Windows or Mac, you can still learn anyway. I'm only a bit annoyed at how much the younger generations are missing out in the current technological landscape.

Seriously, a lot of them don't even know what adblocking is anymore, they are just accepting advertising as something normal, even as a feature, because "that way I don't need to look up what to be interested about" or whatever.

I'm gonna end it here, because I can feel the rant incoming, but this is plenty enough for a day. The Innioasis Y1 is fun to thinker with! Next time I may end up doing some hardware mods to it for some reason. Whatever happens, it will.




