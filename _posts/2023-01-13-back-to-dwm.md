---
title: Back to dwm
header: Back to dwm
description: After a while of being too lazy to try and configure dwm again. I finally decided to journey into setting up this window manager again. And its better than ever for me
tags: ricing linux dotfiles foss unix
permalink: /blog/back-to-dwm/
layout: post
date: 2023-01-13 08:48:38 -0600
host: fosstodon.org
username: joel
com_id: 109682828506190863
image: "/assets/img/blogs/2023-01-13-dwm.png"
---

Pretty much a year ago, I switched to dwm and made a post about [my configuration for it]({{ site.url }}/blog/ricing-dwm-2022/). The reason for doing so, as I explained, was that spectrwm wasn't on its latest version and I couldn't use some features I liked, because of Linux Mint.

Now I am on Void Linux though, and even if I have access to the latest and greatest software. I decided to return for dwm for a while. Maybe permanently?

I managed to patch everything I ever wanted. Even if I had to do quite a bit of manual work. What I did was use [the patching guide by uoou](https://youtu.be/UEmPboaTDpQ), which used git branches for every patch you apply, and, in my case as suggested [by a comment](https://www.youtube.com/watch?v=UEmPboaTDpQ&lc=Ugw_pRQitdmlgNpMcbx4AaABAg). A "build" branch where I merge all the branches into one, which leads to less errors? Maybe its a placebo, but its quite easy to do.

# Patches applied

In the post I mentioned before, I had already mentioned some of my reasoning behind the patches I've used. Here I'll just list them again in case you are too lazy to check that other post. They can be found in [dwm's website](https://dwm.suckless.org/patches/).

- alwayscenter
- attachbottom
- autostart
- functionalgapps(+pertag)
- movestack
- shift-tools
- systray

# Other changes

For my bar, I went with the default and used [aslstatus](https://notabug.org/dm9pZCAq/aslstatus). Its pretty good! I am using the same configuration I shared in my previous post. Pretty much exactly, even though some more features were added to the tool that you may wanna check out.

Picom, the compositor I use, makes window borders transparent. [A couple of lines fix it pretty nicely](https://github.com/szatanjl/dwm/commit/1529909466206016f2101457bbf37c67195714c8).

Right now I am still using some systray stuff, like `volumeicon`, which kinda duplicates the volume info. I will fix it one of these days...

Regardless, here's how its looking!


{% include img.html alt="My dwm rice" image="/assets/img/blogs/2023-01-13-dwm.png" caption="My current dwm rice" %}

# Final words

In the end I am quite happy with my current setup. Everything works just fine. I had heard that the systray patch was hard to apply. I don't know if its the relatively recent patch for dwm 6.4 or if its just that the patching method I mentioned is better. All I did was create a branch with every c+patch applied, then a branch specifically for the systray patch, and I  merged them both, there were no errors at all. Thankfully I doubt I'll add any more patches anytime soon. This is great as it is.

__[You can find my configuration here](https://tildegit.org/chrono/dwm)__. Just build it and it will be good to go.


This is day 13 of [#100DaysToOffload](https://100daystooffload.com)

{% include reply.html %}

