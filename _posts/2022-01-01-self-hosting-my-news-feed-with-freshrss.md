---
title: Selfhosting my news feed with FreshRSS
header: Selfhosting my news feed with FreshRSS
description: So, I decided to take a look at FreshRSS and try and install it by myself on my Raspberry Pi
tags: foss tutorial linux raspberrypi
permalink: /blog/self-hosting-my-news-feed-with-freshrss/
layout: post
date: 2022-01-01 08:00:00 -0500
host: fosstodon.org
username: joel
com_id: 107547601967939855
---

So, I have been using Miniflux for the last few months, and it has worked quite greatly. However, I was not self-hosting it myself, and, while I could just keep using it, since there was no problem for my provider, I decided that, since I was already self-hosting Nextcloud, I could try installing their News add-on. Except that there was a small detail...

You see, I am running RaspberryOS 32bit, and for some reason, the News extension for Nextcloud needs a 64bit operating system. So, instead of being clever and changing distro since I will have to do it one day anyway, I just decided to install something else.

At first I wanted to go for Miniflux, since I was already using it, but then I remembered that it required a Postgres database, and while I don't really have anything against it, I already had MariaDB installed, and I did not felt like having multiple database formats running on my device.

I considered going for TT-RSS or FeedBin but I ultimately went with FreshRSS since it seemed to be the easiest to set up, at least from what I saw.

I initially git cloned the latest release, configured a database and user for FreshRSS and ultimately did the setup with the web interface. Sadly, I was getting a weird `Error during context user init!` message once everything was supposedly alright.

There was no similar problems online, but I decided to go back one version and instead of git I downloaded the tarball. I kept everything unchanged, and it worked just fine. I realized I can actually update FreshRSS via the web interface, and I it seems to have worked when I did it.

So yeah, I have now switched to a self-hosted RSS provider, and it is actually quite great, I still have to find a good theme tho, since the available dark theme kind of sucks, at least for my taste.

I am still probably going to move to a 64 bit distro, so I'll keep you updated on that.

This has been day 72 of [#100DaysToOffload](https://100DaysToOffload.com)
