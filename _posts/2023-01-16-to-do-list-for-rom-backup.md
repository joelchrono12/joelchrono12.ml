---
title: Backing up my smartphone data
header: Backing up my smartphone data
description: These are the things I usually do when I am about to switch my rom on Android
tags: android foss
permalink: /blog/to-do-list-for-rom-backup/
layout: post
date: 2023-01-15 23:00:00 -0600
host: fosstodon.org
username: joel
com_id: 109697219635267643
---

So right now CRDroid 9.1, which is based on Android 13, is being flashed on my device. I made every backup imaginable and realized I almost missed my streak. I've been blogging for 2 weeks straight!

After that paragraph, the zip got installed and its playing the boot animation as of right now. I hope it works alright, I have been waiting for a more mature release of my rom to be available. I have not installed Magisk yet, I just did a clean flash and booted from there.

It booted! Its all fine, I will flash Magisk in a moment, I will share a quick list of the things I cared about backing up.

# Backup strategy

I did not worry much about my Contacts, Calendar, Syncthing, Pictures and RSS feeds, since I have it all synced via DAV or in an external micro SD card.

I backed up stuff such as my AntennaPod database, WhatsApp chats (a must in México), Signal chats, my ActivityWatch buckets and PGP keys (with OpenKeychain).

I actually found a kinda new app that works great for backups. Or at least it did in Android 12. It [has a few releases already](https://github.com/XayahSuSuSu/Android-DataBackup), even though its still in beta, its also available on the [IzzyOnDroid F-Droid repository](https://apt.izzysoft.de/fdroid/repo/com.xayah.databackup_71.apk).

Anyways, that's it, I will now go play with Android 13 and see if I can restore everything.

This is day 15 of [#100DaysToOffload](https://100daystooffload.com)
{% include reply.html %}
