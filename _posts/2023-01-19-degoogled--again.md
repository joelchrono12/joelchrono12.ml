---
title: Degoogled, again, on Android 13
header: Degoogled, again, on Android 13
description: Unlike my previous rom, I decided to once again degoogle my device and its going a lot better than ever in my life. There's only a few bugs, but its all right!
tags: android degoogle foss
permalink: /blog/degoogled-again-android-13/
layout: post
date: 2023-01-19 21:47:04 -0600
host: fosstodon.org
username: joel
com_id: 109719625858460132
---

I think I mentioned this in Mastodon [at some point](https://fosstodon.org/@joel/108951987077271809), but for a while I'd been using Google services on my device because I wanted to use some paid apps I had and also see how well did notifications behaved, since apps like WhatsApp and Discord do not work as well because their push notifications rely on Google.

I change roms pretty much every semester, I think I've done a lot of posts regarding Android and my tendency to customize it and try out their latest versions using all kinds of roms from MSM Extended, to ArrowOS or CR Droid. I have never even installed LineageOS on this device, simply because I prefer customizability over privacy/security.
At this point, I know what I'm looking for, and what I'm doing. I'll settle for LineageOS once my device is approaching EOL on most of its official roms. Even so, I've lived through tons of unofficial roms in previous phones without a ton of trouble. Most of the time devs simply want to keep alive their device, and I choose to trust them.

Anyways, enough justifying myself for no reason. I installed the rom, I restored my apps, I installed some extra stuff and I was pretty happy. I was still a bit annoyed that notifications would not work in certain apps. I've known of MicroG for a long time, I even tried them a couple roms ago by installing them on F-Droid as suggested in the mastodon post I linked. It kind of worked. But the functionality was not as great as I thought.

This time, however, I decided to try again, after I found a Magisk Module to install MicroG, and decided to give it a go. I was pleasantly surprised, because it worked wonderfully, and after enabling its Cloud Messaging for push notifications, the apps started to work just fine, unlike last time. It is quite sad that not that many apps rely on open standards such as [UnifiedPush](https://unifiedpush.org/) just yet.

Regardless, now that notifications work perfectly fine on my proprietary apps, which are also containerized in a Work Profile using Shelter ([F-Droid](https://f-droid.org/packages/net.typeblog.shelter/) \| [Play Store](https://play.google.com/store/apps/details?id=net.typeblog.shelter)). I feel really comfortable with my device.

I also found [Iconify](https://github.com/Mahmud0808/Iconify) an app that lets me customize my phone's quick settings, volume and notifications panel with absolute ease, [its super beautiful](https://fosstodon.org/@joel/109714722893473225)!

The only problem right now is a bug in my rom that sometimes freezes it to a black screen after waking up the device. It usually happens while playing audio, but I still don't find a solution and its bothering me *just enough* that I am considering switching to ArrowOS or something, which also has an Android 13 rom now.

Anyways, those were some thoughts about the latest update on my device's rom. Thanks for reading!


This is day 19 of [#100DaysToOffload](https://100daystooffload.com)
{% include reply.html %}
