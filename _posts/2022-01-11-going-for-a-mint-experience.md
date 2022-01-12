---
title: Going for a Mint experience
header: Going for a Mint experience
description: So, yes, after just a couple of weeks in Void Linux, I ended up switching again, this time I went for Linux Mint.
tags: linux distro foss thoughts
permalink: /blog/going-for-a-mint-experience/
layout: post
date: 2022-01-11 21:40:10 -0600
host: fosstodon.org
username: joel
com_id: 107607430377636437
---

So, I decided to switch again, sorry for the post being quite late today, but I was configuring and trying to return to a workflow used to the benefits and caveats of rolling release distributions such as Arch and Void. 

I decided to go with Linux Mint for a couple of reasons, first of all, I already have Linux Mint on my family computer, and I have already used Debian based distributions, such as MX Linux and Pop_OS!, so it's not like I am diving into totally unknown territory, which would have been the case with Fedora or OpenSUSE, a couple distros I was also considering.

The switch was actually incredibly easy and fast, this is due to me being clever before and having a separate `/home` partition, which made it so I just had to replace the root partition and everything else would stay the same.

When it comes to configs and such, I didn't really have any caveats other than Thunderbird's version being too old in Mint's repositories, which meant that I had to set up everything again, but nothing too difficult to manage. 

Firefox however, worked perfectly, I just left my configured `.mozilla` folder untouched and my profile got picked up as expected. I guess the new changes made with the [collaboration between Linux Mint and Mozilla](https://blog.linuxmint.com/?p=4244) might have helped with that, or at least it did not interfere.

I ended up having to add quite a few PPA's for stuff like Inkscape, Tailscale and Alacritty, the only package I wish had a newer version is `newsboat`, since FreshRSS support was only added in version 2.24, so I can't really access it easily. However, I realized I don't really view my feeds from the terminal that often, so I'll just stick to the Web interface.

I installed Steam and NVIDIA drivers and everything is working just fine so far. All of the games run perfectly without any caveats as far as I could see and the Optimus hybrid graphics things that tend to suck is working decently so far, I can switch between different modes and everything, so I am happy with it.

In case you are interested, I had to leave Void Linux due to the same graphical glitches that I also got the first time I tried it, and also some Steam games did not display correctly either.

Wrapping up, I am quite happy with Linux Mint, I have managed to try and install everything I needed, only a few exceptions showed up, but they are not super important for me. If you are seeing this post, it means Jekyll also got setup flawlessly, which is great.

This has been day 79 of [#100DaysToOffload](https://100daystooffload.com)



