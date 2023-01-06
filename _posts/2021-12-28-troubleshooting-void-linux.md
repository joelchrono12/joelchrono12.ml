---
title: Troubleshooting Void Linux
header: Troubleshooting Void Linux
description: After my switch I have made some changes and additions to better suit my personal needs, here are some things I've changed so far
tags: tutorial foss linux distro review
permalink: /blog/troubleshooting-void-linux/
layout: post
date: 2021-12-28 09:57:57 -0500
host: fosstodon.org
username: joel
com_id: 107526114775171486
---

Ever since I switched back to Void I've done changes to my base install. I will
not go into general customization changes such as desktop environment and other
common settings that I would have done in any other system. I will only mention
the little nitpicks I had to fix so I can consider my system usable.

# Touchpad tap to click, natural scrolling

So, for some reason my touchpad was not working properly, since I could not tap
it to trigger a click, and I wanted to avoid unnecessary hand movement.

After some research, everything I needed to do was create a new file located in
`etc/X11/xorg.conf.d/30-touchpad.conf`.

The folder itself didn't exist for me, so I had to use `mkdir` too. The
contents of this file are the following:

```
Section "InputClass"
    Identifier "touchpad catchall"
    Driver "libinput"
    Option "Tapping" "on"
    Option "NaturalScrolling" "on"
    Option "ClickMethod" "clickfinger"
    MatchIsTouchpad "on"
EndSection
```

After a system restart, my touchpad was working as expected. It is worth noting
that the original files to handle this are in a different location, which is in
`/usr/share/X11/xorg.conf.d`, but those files should not be edited, because
they might be altered in a system update.

# Printer drivers

This is one of many problems that made me quit Void Linux the first time I took
it for a spin. Now I understand CUPS a little better, and I also know that I am
able to install RPM packages with Void Linux, since RPM it's available in their
repositories.

Doing this might not be ideal, since I could write a proper installation script
using tools provided by Void itself to turn either deb or rpm to an xbps file. 

Basically, my Brother printer has a simple bash script that uses RPM to install
everything, I ran it, filled the things that were asked like printer model, IP,
terms and conditions, and in the end, it just worked.

Since I am lazy, the package won't get any updates and I knew it was not as big
of a risk, I just went for it, and now I can do wireless printing painlessly.


# Switching to Pipewire

Pipewire is kinda awesome now, and I decided to use it once again in Void. I've
already used it back when I left Void, and I also set it up for Endeavor too, I
am confident on it, it has not failed me and it handles audio a lot better than
PulseAudio ever did in my experience.

For example, under PulseAudio, some application's behavior was not as it should
be. From time to time, volume changes weren't applied to current audio devices,
or after I muted, I was unable to unmute, and stuff like that.

Now on Pipewire, everything just works so far.

# Wrapping up

So, yeah, I have done a few more small changes, like switching to Spectrwm once
again or changing my GTK theme, as well as other details, but nothing specific,
other than the problems I just mentioned.

This has been day 68 of [#100DaysToOffload](https://100DaysToOffload.com)
{% include reply.html %}
