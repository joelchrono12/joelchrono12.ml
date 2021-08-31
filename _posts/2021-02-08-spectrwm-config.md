---
title: My spectrwm setup
header: My spectrwm setup
date: "2021-02-08 12:09:00 -0600"
description: Why spectrwm is my tiling window manager of choice. 
tags: linux foss
permalink: /blog/spectrwm-setup/
layout: post
---

I found out about tiling window managers as soon as I started to get into the Linux rabbit hole. I really loved how they allowed the user to create their own environment from scratch, or with a really minimal yet expansible base.

# A bit of back story

The first one I tried was [Awesome](https://awesomewm.org/), back when I was using Pop OS, which was my first distro. I used it for months, and I really liked it, but I didn't really understand it. The config file of this WM is written in Lua, and is extremely customizable, allowing for theming, widgets creation and so much more. But, since I didn't know the language, I copy-pasted code from the internet until I got something I liked. However, loading times got huge, and I did not know how to troubleshoot it, maybe a missing library or some code that was too resource heavy. The point is, that only the default themes worked fast enough for my liking. Ultimately, I decided to try something else.

# Making the change

I had heard about Spectrwm for a while, and tried it a couple of times, but I never managed to customize my bar panel successfully. But after watching [Distrotube's video](https://www.youtube.com/watch?v=XK3KpLZdoO4) on Spectrwm, I noticed that I made a pretty dumb mistake, I did not make the bar script an executable (yeah, I know, pretty obvious once you realize). 

## Customizing my bar

The bar can be configured in different ways, I just use a bash script, I named it `baraction.sh` and it is located in `~/.config/spectrwm/`, I followed Distrotube's config, and took some ideas from [r/unixporn](https://www.reddit.com/r/unixporn/)
I had to setup some colors inside my `.spectrwm.conf` file, which looks something like this:
```
# Bar Settings
bar_enabled			= 1
bar_action			= ~/.config/spectrwm/baraction.sh
bar_action_expand			= 1
bar_border_width	    	= 1
bar_border[1]		    	= rgb:18/18/18
bar_border_unfocus[1]		= rgb:18/18/18
bar_color[1]	    		= rgb:2e/34/40,rgb:eb/cb/8b,rgb:a3/be/8c,rgb:bf/61/6a,rgb:b4/8e/ad,rgb:88/c0/d0,rgb:d0/87/70,rgb:3b/42/52,rgb:4c/56/6a
bar_color_selected[1]		= rgb:88/c0/d0
bar_font_color[1]		= rgb:ec/ef/f4,rgb:2e/34/40
bar_font			= mononoki Nerd Font:pixelsize=15:antialias=true
bar_justify			= right
bar_format			= +|L +@bg=0;+S +L +@bg=0; +@bg=8; +C +@fg=0; +|2R +A +@bg=0;+@fg=0; %a, %b %d %R +<    +<

```
##  Scripts with wmctrl and other configurations

Spectrwm is can be controlled with a little program named [wmctrl](https://www.freedesktop.org/wiki/Software/wmctrl/), wich interacts with EWMH compatible X window managers, and I can use it to make some interesting things. For example, Spectrwm does not play nice with polybar, trayer and similar tools. Since I use the default bar, I dont really have a problem with this for the most part. Nonetheless, I made a script that moves my systray to my current workspace, it looks like this: 

```
#!/bin/bash	
current_ws="$(wmctrl -d | grep '*' | awk '{print $1}')"
wmctrl -r panel -t $current_ws
```
I just run it inside of the bar script, so it updates at the same time.

# My current setup (constantly evolving)

I really love how spectrwm is so easy to configure in general, as you saw with the little snippet I shared, Spectrwm does not need any specific programming language to understand what is going on, just a bit of text formatting and some help from the manpage, and everything ends up working out. In the end, I have this is my current setup. 

<figure>
  <img alt="spectrwm setup" src="/assets/img/blogs/2021-02-08-spectrwm1.webp" />
  <figcaption>Typora, alacritty, pcmanfm </figcaption>
  <img alt="spectrwm setup" src="/assets/img/blogs/2021-02-08-spectrwm2.webp" />
  <figcaption>Firefox, htop, kristall </figcaption>
</figure>

There is still work to do, but I am really happy with the results,  I am stilll playing around with other scripts and things. If you wanna get my current dotfiles, you can do so [here](https://tildegit.org/chrono/dotfiles). 

Day 4 of [#100DaystoOffload](https://100daystooffload.com/)








