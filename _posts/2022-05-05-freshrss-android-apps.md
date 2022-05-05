---
title: FreshRSS Android Apps
header: FreshRSS Android Apps
description: There are not a lot of great RSS apps for Android, and there are not of RSS apps that support FreshRSS just yet either, but I still have hope.
tags: rss ramble android opinion
permalink: /blog/freshrss-android-apps/
layout: post
date: 2022-05-05 09:58:51 -0500
host: fosstodon.org
username: joel
com_id: 108250214220117565
---

This post won't be long, I just wanted to keep going a bit about the state of RSS reader apps on Android. Ever since [Flym](https://github.com/FredJul/Flym) died, I have been looking for an alternative, and since I moved to FreshRSS, my needs got a bit more specific, since I need a client with support for Fever's or Google Reader's API. So far, nothing has managed to convinced me.

Locally there are many options. Feeder is probably the best we got among the FOSS apps available on F-Droid. It has been going through a UI revamp and its looking pretty good, but it has no way to sync to any APIs, only locally. The developer seems willing to accept a PR that adds this, but so far, no luck. The [issue related to this](https://gitlab.com/spacecowboy/Feeder/-/issues/52) has been open for 4 years.

Apps that can sync with FreshRSS are few and far between. A quick search on F-Droid for "FreshRSS" only shows 3 results, all of them are pretty outdated. There is plain FreshRSS, which looks pretty ugly and is sluggish on my device. There is EasyRSS which looks straight out of Android KitKat. But I have to admit, it's buttery smooth, and super lightweight too.

Right now, [Readrops](https://github.com/readrops/Readrops) is the most modern looking of the bunch, and my current choice at the moment, however, it still feels a bit old. And the compatibility is bare, favorites work, but labels don't, for example. Also, the dark theme is not of my liking.

There is actually another app with a very elegant design, that shows up when looking for "Fresh RSS" on F-Droid: [Fluent Reader](https://github.com/yang991178/fluent-reader_lite).
However, such design is following Apple's guidelines, instead of Material design, which makes it not fit at all with the rest of my system. That's pretty much my only complain.

Sadly, the current best Android client for FreshRSS is [FeedMe](https://play.google.com/store/apps/details?id=com.seazon.feedme), it is not FOSS, but it has support for a lot of APIs and pretty much all of the features FreshRSS comes with, its design is great and functional. The only thing I don't like is the settings page having a sidebar, but that's about it.

I am a bit conflicted between a great but proprietary product, or a decent FOSS option that mostly works for my needs. My FOSS enthusiast side ended up winning, so I have been stuck between the mobile Web UI and Readrops for a while now.

However, the future is a bright one, I recently stumbled upon a new kid on the block that came out on F-Droid recently. [ReadYou](https://github.com/Ashinch/ReadYou) has a modern and beautiful UI (unless you don't like Material You), as well as an awesome list of upcoming features, including support for the APIs supported by FreshRSS, which is exactly what I am looking for.

ReadYou is still implementing some basic features, so FreshRSS and sync support is still not being implemented, but the fact that its planned at all has given me hope. I decided to wait on it for now. However, it works locally just fine, so if you want to give it a go, I encourage you to try it out!
