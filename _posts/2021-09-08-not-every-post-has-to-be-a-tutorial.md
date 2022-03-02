---
title: Not every post has to be a tutorial (Catching up)
header: Not every post has to be a tutorial (Catching up)
description: During the last couple of days I have been thinking about topics I want to cover, but I don't have the time to invest in proper explanations. I decided  to let it be and just talk about what I've been doing these days.
tags: lifestyle ramble blog ricing raspberrypi school inkscape foss linux
permalink: /blog/not-every-post-has-to-be-a-tutorial/
layout: post
date: 2021-09-08 15:22:24 -0500
host: fosstodon.org
username: joeligj12
com_id: 106898166942458826
---

So, I have learned quite a lot of things that I wanted to share here on my blog. But I did not really feel like I was good enough to mention them properly without doing a full tutorial or essay about the topic. I have already talked about a similar problem in previous blogs. Let's catch up on what I have been doing lately, alright? 

# Switching to dwm

First, I switched to DWM as my tilling window manager of choice. Yeah, right after I upload my blog showcasing my dotfiles and my spectrwm configuration, I pick up my stuff, git clone the dwm repo and start learning how to patch this thing so it does the stuff I want. And guess what, I couldn't be any happier right now. DWM is not the window manager I wanted, but the one I needed. 

Seriously, once its all setup and ready to go, it looks exactly like my previous spectrwm configuration. However, the bar is better, the tags are clickable (I know, I am sorry), and (again, I am sorry) *I can change my gaps size on the fly*.

I no longer have access to a config file that can be changed on the fly. But it is still quite easy to read, and building from source is not slow at all. Besides that, the bar (which I spent most of the time customizing) is a separate program ([aslstatus](https://notabug.org/dm9pZCAq/aslstatus) btw), so I don't need to reboot the WM to see the changes.[^1]

[^1]: Being honest, due to how aslstatus works, I feel like it could be easily used in spectrwm. But I have not tried it, and since DWM works just fine, I don't plan to.

Overall, I am really happy with DWM, and I will probably talk more about it in the future.


# More services for my Raspberry Pi

Since my Pi is confined to my local network, I decided to keep playing around with it and using programs that can be used despite said limitation.

I already mentioned Pi-hole, which is an ad blocking program that works in the whole local network. Since then I added [radicale](https://radicale.org/), which is a contact and calendar server that uses CalDAV protocol, I can just save my contacts on my phone, and using DAVx5 it gets synced as soon as I am connected to my network. 

## Rethinking my RSS setup

Another program I decided to try was an RSS server. Something that I could use and would work with [Newsboat](https://newsboat.org), a terminal-based RSS reader that I believed was local only. But after reading the documentation, I realized it was able to work with multiple services like [Newsblur](https://newsblur.com), [Tiny Tiny Rss](https://tt-rss.org), [FreshRSS](https://freshrss.org) and [Miniflux](https://miniflux.app).

At first I tried and enjoyed Newsblur, but after I found the limitations of the free tier, I decided to use my Pi and find some server to use. I chose Miniflux, and I am pretty happy with how it turned out.

While the integration with Newsboat was fine. There are not a lot of apps compatible with Miniflux, at least on F-Droid, the only one available was [Fluent Reader](https://hyliu.me/fluent-reader-lite/), which looks like an iOS app, and while functional, didn't really fit my style. After some digging on Reddit, I found out about [Miniflutt](https://github.com/DocMarty84/miniflutt), which is available on GitHub and, while a little bare bones, works fine enough. I really like having my read and starred articles synced across my devices, the kind of feature I didn't know I needed!


# Designing some more icons on Inkscape

Of course, I am also making icons for the Arcticons icon pack, while I don't have as much time during school, I have still managed to create a few icons for some apps, including the Miniflux RSS readers I found. You can see the pull request [here](https://github.com/Donnnno/Arcticons/pull/311).[^2]

[^2]: I did not feel like adding pictures to this post, so I just shared a link where you can see the icons in their full glory (Unless you use light theme on GitHub, which is disgusting).

# Finishing up

So yeah, just a quick catch up, Here is a quick list of another quick things I did:
- I followed a bunch of new RSS feeds from sites that appear on the Tech News videos from Techquickie.
- I am using Emacs and org mode to take notes for school, because it has a feature to copy and paste screenshots easily!
- I might switch to Vim again because HexDSL has a script I could modify to do the same thing!
- I posted a meme on Fosstodon and its getting more attention than I expected, I also decided to make my account locked, so you have to send a follow request.
- I am learning some fun robotics stuff at University, but the site feels like something made for kids (Visual scripting), I wish they taught us some real coding.

Anyways, I wrote more than I expected to! This has been day 55 of [#100DaysToOffload](https://100DaysToOffload.com). I hope you have a great day.

***



