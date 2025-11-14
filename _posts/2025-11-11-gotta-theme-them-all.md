---
title: Gotta theme them all
header: Gotta theme them all
description: I enjoy customizing my devices, I can't help it when a new toy shows up, even more when I can actually modify assets and graphics myself.
tags: tech ramble storytime
permalink: /blog/gotta-theme-them-all/
layout: post
date: 2025-11-11 20:39:51 -0600
host: fosstodon.org
username: joel
com_id: 115534843771839281
image: 'assets/img/blogs/2025-11-11-my-innioasis-y1-with-my-adapted-adwaitapod-theme.webp'
mentions:
  - author: Andreas (82Mhz)
    title: Linkdump No 81
    url: https://82mhz.net/posts/2025/11/linkdump-no-81/
---

You may have noticed by now, but I have something of an obsession with **customizing my devices**, and fiddle with every single setting about them that I can.

It became a thing with my [Android phones](/blog/the-smartphones-i've-owned-so-far/), from [3rd party launchers](/blog/android-launchers/), icon packs, widgets, or wallpapers, to the good old XPosed or Magisk modules, power apps, and custom ROMs. All that with the purpose of **making it mine**.

[Modding my PSP](/blog/what-is-on-my-psp) also opened a different can of worms, I put custom themes and icon sets, changed the wallpaper accordingly, put some plugins to organize my games, quick launchers and whole custom GUIs too. Not to mention all the homebrew, emulators and backed up games I could run on it.

This obsession grew some more after I put Linux on my computer, I remember starting with [Pop_OS](https://system76.com/pop). I figured out GNOME extensions, I got into GTK themes, terminal color schemes, and everything in between. I explored other distros like MX Linux, Void Linux or Fedora, which came with XFCE or KDE. **I tweaked every setting to my liking**.

Eventually I became aware of the world of *window managers*, where I learned to customize everything further more, I stuck with [AwesomeWM](https://awesomewm.org) for months, one of the all-timers with the most features, settings and scripting capabilities. At some point I switched to [SpectrWM](https://github.com/conformal/spectrwm), more bare-bones, but easy to customize, I even shared [my config](/blog/spectrwm-setup/) at the time in case you care to check it out.

After a few jumps to other places, I finally landed on [dwm](https://dwm.suckless.org/). 

Since then, [my config](/blog/dwm-) went through a lot of patches and settings until it was perfect (for me), and it has remained virtually unchanged since then, just some keybinding or start program every once in a while.

However, I think something changed when I started to [learn Inkscape](/blog/inkscape-is-fun/). I was not just applying some icon pack to my phone, I was **putting my own work on my phone**.

That flipped the script and gave me a whole new way to make a device my own.

So, when I started to get into Linux-powered emulation devices such as my [Miyoo Mini Plus](/blog/miyoo-mini-plus-review), I couldn't help but get obsessed with it. I put [OnionOS](https://onionui.github.io/) on it, I [created my own theme](/blog/i-made-a-theme-for-my-miyoo-mini-plus/) for it based on Arcticons, I created [my own videogame art](/blog/making-custom-videogame-covers/) because I didn't like the existing ones, among many other customizations.

I did the same thing with the [Anbernic RG35XX SP!](/blog/the-gba-experience-i-wanted/) And that was a crazy ordeal as well since the theming is much deeper and powerful on [muOS](https://muos.dev). I even had to update it and remake it couple of times because themes kept breaking after every update.

Now that I acquired yet another single-purpose device, the [Innioasis Y1](/blog/rockbox-innioasis-y1-install-stuff-ramble/)---a cheap music player device that happens to have Rockbox support---it was time yet again to make it mine, although I ended up going for a new approach this time.

I have **zero idea of how Rockbox theming works**, so I initially went with one of the themes available, thinking that'd be good enough.

However, I noticed the themes were simply upscaled to 360p (the resolution of the Innioasis Y1) from the original 240p versions (which is the resolution of most iPods that run Rockbox). So, when I noticed this issue, I decided to try and fix it, and it would be an interesting learning experience as well.

I figured out where all the assets are located, a set of folders filled with BMP image files. I remade most of them on Inkscape or GIMP, I reformatted them to a specific BMP version with ImageMagick. Not to mention messing around with [converting font files to an appropiate format](https://d00k.net/wiki/rockbox_advanced/font_combining/).

I ended up having to edit some theme files, so I also had to learn a little bit about how themes actually work, and now I have a pretty perfect theme based on [AdwaitaPod](https://github.com/D0-0K/adwaitapod/). Same colors and shapes, just some icons remade in the Arcticons style.

All of this to say, I *think* I am getting an idea about how all of this works under the courtains, so I *may* end up creating, or at least heavily modifying, my own theme in the future. It seems rather inevitable at this point.

*Gotta theme them all!*

{% include img.html image='/assets/img/blogs/2025-11-11-my-innioasis-y1-with-my-adapted-adwaitapod-theme.png' caption='My Innioasis Y1 with my adapted AdwaitaPod theme' %}
