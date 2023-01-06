---
title: Installing LabVIEW in Linux Mint 20.3
header: Installing LabVIEW in Linux Mint 20.3
description: Trying to install this piece of proprietary software because my school wants me to is quite painful, but here is what I did
tags: tutorial linux ramble personal school
permalink: /blog/installing-labview-in-linux-mint-20-3/
layout: post
date: 2022-01-25 10:45:40 -0600
host: fosstodon.org
username: joel
---

So far, I have tried multiple ways to solve this, including the first couple of tutorials that just run the INSTALL script or do it via rpm itself.

Right now I am writing this while following [this comment](https://lavag.org/topic/21809-installing-labview2020-on-debian/?do=findComment&comment=133824) because it seems relatively up-to-date. I am installing the latest community edition for LabVIEW, which is from 2021.

I am literally following the list of commands he explains, so I won't really add too much, unless I fail, quite a lot of deb files have been generated already, I just have to see if they work once the generation process finishes for  all of them.

Having to use these programs pains me, I wish formats like AppImage were used to deal with this nonsense of proprietary software that have bad support, even for Ubuntu. At least MATLAB is relatively sensible and easy to install.

The comment makes use of alien and dpkg, it's not super hard to follow, if a little repetitive for a bunch of things.

The deb files have been generated, so I proceed to just install them with dpkg. Let's hope it works.

[...]

Well, it didn't work, a few of those packages were kinda broken, so I will probably try and install the version used in the tutorials instead and see if I have any luck that way, the teacher is probably using an old version too anyway.

[...]

Ok, my bad, some deb files failed to install, but it looks like the program runs just fine, I just had to edit the desktop file to point to the `labviewprofull` binary, and somehow I don't need to authenticate or anything, it just worked. So here is ~~exactly~~ what *I think* I did, maybe you don't need to do half of them, but at least what I did made the program open just fine.

* Follow the steps from the already mentioned comment.
    * Instead of installing the deb files one by one, I just used `dpkg -i *.deb` because why not.
* Set up your default root browser to Midori because Chromium and Firefox don't like to run as root
* Add a symlink to your PATH that points to /usr/local/natinst/LabVIEW-2021-64/labviewcommunity
* Run from terminal using sudo
* Authenticate, in my case it got stuck loading, but I closed the browser and the program worked...
* Tried again without sudo, didn't work.
* Tried using labviewprofull binary instead of community.
* Replace the Exec line in LabVIEW's desktop file with the path to labviewprofull
* Replace the symlink too
* Run LabVIEW and it should be done.

This is an absolute mess, how am I even running the full version anyway without any license? Or maybe it picked up the community license despite the community version refusing to work without sudo?

I have no idea of what I did, but it worked so far.
This is an absolute mess, how am I even running the full version anyway without any license? Or possibly it picked up the community license despite the community version refusing to work without sudo?

[...]

So the interface sucks, it looks like Windows 95, it already looked like that in Windows itself though, but I had to change the font size since it was set to 10px, which is not readable at all.

Also, the program barely works in tiling window managers, I will probably stick to using it in floating mode the whole time, whatever.

In the end, I guess it's installed now, it completely messed up the folders and I don't even know how to uninstall it once the time comes, but I guess I'll be ready for that.

This has been day 94 of [#100DaysToOffload](https://100daystooffload.com)
{% include reply.html %}
