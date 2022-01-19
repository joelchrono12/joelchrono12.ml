---
title: DAVx5 and vdirsynced
header: DAVx5 and vdirsynced
description: I have been using Nextcloud to manage contacts and calendar events, but I wanted to talk about what I do to access them both in my laptop and android devices
tags: sync foss email linux android unix
permalink: /blog/davx5-and-vdirsynced/
layout: post
date: 2022-01-19 11:00:04 -0600
host: fosstodon.org
username: joel
com_id: idcomments
---

So, when I moved to Linux Mint, I ran into an issue with Thunderbird, which was the email client I've used the most. The version available in Linux Mint by default was too old, so despite having backed up my `/home` partition, I was unable to restore the Thunderbird profile I used to have.

No big deal, I decided to just download the tarball provided in their website, and simply use that. It worked fine, but when I tried to add my existing profile folder, the program just crashed, and I was unable to restore my settings, my gpg keys, filters, calendars and so on.

This is what ultimately made me go and try out Neomutt, and I have been using it ever since.

My last post I talked about a terminal application known as `khal`, and how to integrate it with my Nextcloud server via CalDAV. So i just wanted to say what I've done for contacts for neomutt, as well as my android device.

I went ahead and tried `khard`, a tool that works similarly to `khal`, integrating with `vdirsyncer` to keep my contacts synced with Nextcloud, the setup is pretty similar to what I did for my calendars, and you can read their documentation to check out how to do it. Adding a cronjob to automate these updates and checks was no big deal.

I also integrated it with Mutt, so now when filling up the `To:` in an email I can just hit <Tab> and get some suggestions, as well as adding a contact email quickly. 

When it comes to android, I think I've already mentioned it in other posts, but it doesn't matter, [DAVx5](https://www.davx5.com/) is a fantastic app that allows me to add a DAV account and sync everything, it integrates wonderfully with the contacts and calendar apps I use, it just works.

If you have the Nextcloud app installed, you can also auto-connect to DAVx5 in the settings, so its not even that complicated to setup, just do it once, and forget about it.

So, both `vdirsynced` and DAVx5 are amazing applications that allow me to easily access my contacts and events in a pretty easy way.

The UNIX philosophy is pretty interesting. Programs and tools dedicated to one thing, able to simply be connected to each other and delegate tasks to whatever does the job best.

I am particularly amazed at how my contacts and calendars are now simply a set of files and folders in my Linux system, that can be integrated with these simple programs without too much trouble. I am really happy with how it works, no longer will I deal with random broken profiles and settings, *hopefully.* And its pretty easy to backup too!

This has been day 88 of [#100DaysToOffload](https://100daystooffload.com)








