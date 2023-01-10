---
title: Updating a package for Void Linux
header: Updating a package for Void Linux
description: This is not a tutorial, I only share my experience and side quests that led me to commiting a package for Void Linux, the distro I use, with relative success
tags: linux git foss distro
permalink: /blog/updating-a-package-for-void-linux/
layout: post
date: 2023-01-10 13:00:21 -0500
host: fosstodon.org
username: joel
com_id: 109667250442947201
---

I am very happy with my transition to Void Linux, I've come and gone many times, but I think that this one may finally stick.

I've known about the [void-packages repository](https://github.com/void-linux/void-packages) for a while, it is quite similar to the AUR. Its a place where you can contribute new programs and libraries to be packaged in Void Linux, and its needed if you want to install some non-free packages like Discord.

[OpenLP](https://openlp.org) is a free and open source worship presentation software, mainly for churches. Basically, it lets you display Bible verses, lyrics and the like. Its a tool used in my local church and I find it quite great! Its latest stable release just came out a few days ago, and since I noticed Void didn't have the update yet. I decided to try updating it myself.

I expected to do some complexstuff, but after a quick read of their [contributing guide](https://github.com/void-linux/void-packages/blob/master/CONTRIBUTING.md), and after checking the history of commits previously done for the package I was going to work with, I realized it shouldn't be too difficult.

In my case, I only changed the version and the checksum, I did `./xbps-src pkg OpenLP` and, like magic, I was able to build it and install it without a problems.

However, when I ran some tests (using the `-Q` flag in xbps-src) I noticed that it was mostly fine, but a few tests failed to run. I had already submitted a PR, and I decided to try and look for solutions.

# Sidequest: IRC Chat

I went to the []Libera IRC network](https://libera.chat) to chat in the `#openlp` chatroom and ask some questions. I eventually realized that there were some changes done in Python 3.11 that were not accounted for just yet in this latest release. Although a few MRs later they should be fixed.

Regardless, I now knew that the problems were on their side, and even if the tests failed, the program was working alright.

Then I felt like selhosting my own IRC web client to not miss any messages, just in case. So I went ahead on my Yunohost applications and ended up trying out [The Lounge](https://github.com/thelounge/thelounge), which can be easily installed. I found it quite good, and its always connected, which was incredibly useful for me. I was initially on [Libera's public Kiwi instance](https://web.libera.chat), but I find TL to be quite good, and its also more up to date, relatively speaking.


# Updating dependencies

So anywyays, I got a couple suggestions on [my PR's GitHub thread](https://github.com/void-linux/void-packages/pull/41526) and ended up updating two other Python dependencies in my PR, I was actually unaware of them, but another mantainer, who is also [a fellow Joel](https://beckmeyer.us/), sent me the patch so I could commit them myself without much trouble.

After adding a couple other lines to skip tests that still are not working on Python 3.11, building the package with `./xbps-src pkg -Q OpenLP` is now successful on my end.

# Finishing words

By the time I write this, my PR is still not merged just yet. There is also a chance that the OpenLP devs make a new version by tomorrow and I have to update my PR once again.

For now, this was quite a fun project, I kind of wanna look for other simple programs and tools that kinda build themselves just fine, and contribute that way, even if I only change a couple of lines everytime.

I will update this blogpost if my PR is successful or some other news happen.

This is day 10 of [#100DaysToOffload](https://100daystooffload.com)
{% include reply.html %}
