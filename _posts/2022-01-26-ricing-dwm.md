---
title: Ricing dwm
header: Ricing DWM
description: "I enjoy tiling window managers, and I've used DWM in the past, but after a few weeks on XFCE, I decided to go back to basics"
tags: suckless ricing linux foss config
permalink: /blog/ricing-dwm-2022/
layout: post
date: 2022-01-26 12:09:03 -0600
host: fosstodon.org
username: joel
com_id: idcomments
---

When I installed Linux Mint, one of the first things I did was install spectrwm and set it up there. However, I realized that the version available in the repositories does not work with some features I was using, like changing the color of text in my bar.

Because of this, I decided to just stay in XFCE, the Mint edition I got, for a while, until I figured something out. I could build spectrwm from source, but there is no official guide and, while I think its probably super easy, I figured that if I was going to build a WM from source, it would be dwm.

While I don't really dislike XFCE, I really wanted to go back to tiling, some things just didn't work as I wanted them to, and some programs didn't like to stay where I put them, or couldn't be resized as easily, and XFCE just lets them be, even if I just want them to be smaller or something. During some free time I got, I decided it was finally time to set dwm up once and for all.

I have switched to dwm in the past, in fact I've even made a post about the setup [I used back then](https://fosstodon.org/@joeligj12/106874184595546555), but I never wrote something for this blog about it. I guess it was about time.

# My patch selection

The patches I've decided to use are quite pretty similar to what I would get with spectrwm default keybindings with a few additions. I think its a pretty simple and minimal set.

* **[attachbottom](https://dwm.suckless.org/patches/attachbottom/)**: This is a really simple patch that I really, really like, I discovered thanks to HexDSL, and I prefer it a lot from the default, since windows appear at the bottom of the stack and don't move around the rest. Its pretty comfy and easy to apply.
* **[functionalgapps+pertag](https://dwm.suckless.org/patches/functionalgaps/)**: I like this patch because it basically applies two in one. This makes it so each tag (or workspace) can have different modes, like, if you have a tag floating, you can have others in master and stack, or another tag maximized. Of course, I also really like gaps, even if they can be a bit useless sometimes, but I can resize them in real time and stuff like that, it makes my brain feel happy.
* **[movestack](https://dwm.suckless.org/patches/movestack/)**: This is a basic function that should be there by default, changing the position of a window in a stack is something I consider fairly important. Dwm only allows moving something from the stack to the master position, and a lot of people can only live with that, so you might now actually need this, but I do.
* **[alwayscenter](https://dwm.suckless.org/patches/alwayscenter/)**: This makes it so if you have something configured as floating in the config file, it will be centered each time you open it. It does not center stuff you make float manually tho, which fits my needs
* **[movecenter](https://dwm.suckless.org/patches/movecenter/)**: This lets me use a keybinding to center whatever window I have floating around, its pretty useful and complements the previous patch nicely.
* **[shift-tools](https://dwm.suckless.org/patches/shift-tools/)**: Another useful patch that lets me move around tags with something other than MODKEY+number, for example, drag a window an switch tags alongside it, and other nice features. This is a must for me, might as well be the most important patch, I guess I could live without the rest somehow, but I am just too used to this one, which is available in most tiling window managers by default.
* **[autostart](https://dwm.suckless.org/patches/autostart/)**: I decided to have an autostart patch due to some problems I had while using .xinitrc and some programs failing to run properly, but this patch lets me have more control and be completely sure that whatever I want to run will do just do it.

## Notes

There is still one patch I have not added, but I used in my previous configuration, and that is **[status2d](https://dwm.suckless.org/patches/status2d/)**, because it lets me use custom colors, which is what I wanted to have in spectrwm in the first place, but I didn't feel like adding it right now, since I am happy with my current bar.

I also was a bit interested in [swallow](https://dwm.suckless.org/patches/swallow/), but I don't really need it, I am used to other methods already and the situation where it could be useful isn't really that common for me.


# My bar

There are many ways to customize the bar, from `xsetroot`, to `dwmblocks` or [slstatus](https://tools.suckless.org/slstatus/), all of them are pretty good ways to make use of it. However, I went ahead and used [aslstatus](https://notabug.org/dm9pZCAq/aslstatus), which is basically the same as suckless' original tool, but asynchronous, I can make my volume update in real time, while the weather info is only updated every 30 minutes or so. Its pretty good and I really like it, and it works with status2d and colors, whenever I get the time to set it up properly.

It's what I used in the mastodon post I shared above, so it works great. Its also the reason I went with an autostart patch, since running it from .xinitrc was not reliable.

# Finishing up

There isn't really a lot else to say, I guess I could share the current config in my git repository. I will probably do it soon enough, there are still some things I want to change but I am pretty happy with how it looks now. I like the simplicity I went for. Sadly, LabVIEW, the program I installed yesterday, hates being told where to stay, so I'll have to stick with XFCE during those classes.

You can see my [configuration file for dwm here](https://tildegit.org/chrono/dotfiles/src/branch/master/stow_home/dwm/.config/dwm/config.def.h), but its nothing too special. My bar is also just using the defaults, and this is at the bottom:

```
static struct arg_t args[] = {

/* function		format		argument	interval (in ms) */

{ netspeed_rx,  "  %sB/s",     IFC,        2 _SEC, END },
{ netspeed_tx,  " -  %sB/s |", IFC,        2 _SEC, END },
{ disk_free,    " %s |",		"/",	    25 _SEC,END },
{ cpu_perc,	    "  %3s%% |",	NULL,		1 _SEC,	END },
{ vol_perc,		" %s |",	    NULL,		0,		END },
{ wifi_perc,	" 直 %3s%% |",	IFC,		2 _SEC,	END },
{ battery_perc,	"   %3s%% |",	"BAT0",		1 _MIN,	END },
{ datetime,		"  %s ",	    "%H:%M:%S",	1 _SEC,	END },

};
```

This has been day 95 of [#100DaysToOffload](https://100daystooffload.com)






