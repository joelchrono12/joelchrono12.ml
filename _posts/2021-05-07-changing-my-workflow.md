---
title: Changing my workflow, making it Vim-like, switching rom 
header: Changing my workflow, making it Vim-like, switching rom 
description: I feel like testing stuff out, switching my workflow around, evading being bored and completing my homework in time! 
tags: linux lifestyle android foss vim
permalink: /blog/changing-my-workflow/ 
layout: post 
date: "2021-05-07 18:20:03 -0500" 
host: fosstodon.org 
username: joeligj12 
com_id: 106196763484527173
--- 

Lately I have decided to change a bunch of stuff when it comes to my workflow
with my devices. Be it my laptop or my android phone. I have made some changes
mostly out of boredom, but also because I have got a few problems that I didn't
feel like fixing on [Spectrwm](https://github.com/conformal/spectrwm), as well
as other quality of life changes.

# 🪟 Leaving Spectrwm, embracing Awesome, considering DWM

I really, really liked Spectrwm, I might as well go back to it in a few days,
since the main reason I am moving away from it might not be that hard to fix.
I find the system tray to be quite useful to me, my choice was
[trayer](https://github.com/sargon/trayer-srg), since it was good enough.
However, I had some problems that made it feel pretty clunky.

- I can only show tag numbers,or numbers + name. I want to display only the
names, which are Nerd Font glyphs.
- The systray will overlap with the bar content, at least on the position I
want it to be.
- The systray wont follow me when switching workspace, but I have a script that
moves it using `wmctrl`
- When trayer gets moved to my current workspace, it steals focus, if I close
every window, it steals focus
- If trayer gets mouse focus, I **cannot** do **anything**, no keybindings will
work. The only thing that works is clicking an icon that opens a window (like
Discord) or killing Spectrwm from a TTY 

Honestly, most of these problems are not a big deal most of the time. But as I
said, I am doing this mainly out of boredom, so let me be.

Installing [dwm](https://dwm.suckless.org/) also came to mind, and I decided to
give it a try, but right now I can't wrap my head around it, but I might check
it out later.

# 🌐 Changing Firefox, checking out Qutebrowser

For quite some time, I have heard good things about
[Qutebrowser](https://qutebrowser.org/). So I have decided to give it a try. I
actually loved it, I really liked the way it works and I found myself extremely
comfortable using Vim keybindings on it. I really enjoyed how smooth it was and
the keyboard driven workflow.

Its engine is now based on Chromium, which is a bit annoying since I support
Firefox's Gecko. However it now will display most websites better than when it
was using WebKit as a base.

So right now I decided to go back to Firefox, and set it up in a similar manner
to [HexDSL's
configuration](https://gitlab.com/hexdsl/dots/-/tree/master/firefox), which has
tabs on the left side and gets rid of most of the GUI, making it pretty nice
looking to me. 
I will change to Qutebrowser once I set it up properly and get ad-blocking on it.

For now, Firefox + [VimVixen](https://github.com/ueokande/vim-vixen) will do to
give me that Vim-like workflow. I actually can't believe how handy and nice it
is. 

# 💻 Maybe distro hopping, changing rom again

After all this, I have also been thinking about changing my distro once again.
I have enjoyed void for quite a while, and its great, with no doubt, I might
just be a bit inspired while writing this and I might end up not switching
after all. 

I have been considering something like [EndeavourOS](https://endeavouros.com/),
or maybe reinstalling Void, but base only, we will see. I am a bit tempted by
the "terminal driven" workflow the claim to have, I already have that on Void,
but I am still curious. 

Also, I will change my Android rom soon. I haven't updated it in a while, and I
have been looking for a bit more customization than what I already have. I have
downloaded [CrDroid](https://crdroid.net/), which has an official rom available
for my Redmi Note 8, so I will give it a try later today. 

Syncthing and Migrate are great tools for making backups, and  I think I will
have to install minimal Gapps due to school stuff, and because I got some paid
apps I can't live without, such as Nova Launcher or Typing Hero. I am working
towards changing that, but not right now.

I always feel quite dirty when I have to change rom and reinstall the Google
apps, especially when I try to defend FOSS and Android in general, but well,
you gotta do what you gotta do.

# Wrapping up

Anyways, after all of this I gotta say I am quite happy with the changes I've
done, and I hope the ones I still have to make will be good too. I have had
some problems with time management, and I know that it's kind of a meme the
amount of time you invest on setting everything up on Linux to get actual work
done. But well, I enjoy it, and I still managed to deliver all of my homework!
So I consider this a win. I have exams next week, so let's see what happens
with that.

This has been day 34 of [#100DaystoOffload](https:/100DaystoOffload.com)
{% include reply.html %}
