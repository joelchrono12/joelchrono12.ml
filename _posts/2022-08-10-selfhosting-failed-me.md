---
title: Selfhosting failed me
header: Selfhosting failed me
description: This was pretty much my fault, but let it be a tale about how not being cautious about backups could be terrible if you are careless like me
tags: storytime ramble selfhost webdev raspberry
permalink: /blog/selfhosting-failed-me/
layout: post
date: 2022-08-10 12:23:50 -0500
host: fosstodon.org
username: joel
com_id: 108799873852600814
---

Using a Raspberry Pi to selfhost everything and then suffering from a power outage is not the greatest thing that has happened to me. I got lucky many times, but it was bound to happen.

Thankfully, my hard drive which contained pretty much all of the data suffered no damage as far as I can tell, since I can still access all the files I had stored in it. I am not sure if my SD card is well or not, I have not bothered to try fixing anything if it was only an SSH failure or something worse. I went on vacation so I was not home and I did not feel like fixing this or selfhosting for a while


# Recovering data and annoyances.

There were some things that I had to fix and some services I had to replace, its a bit of a regression, but at least I am back to normal.

## DAV (Calendar and contacts)

At the moment I decided to move my contact/calendar DAV sync to Disroot, which I've decided to trust. All of the data was synced to my computer thanks to Khal and Khard, but Kontacts, which is KDE's manager provided the best VCF export file, since it kept the contact pictures quality, which was not kept on Android's exporter, and I don't think Khard provides it at all.

Calendars and events were easy to recover from Simple Calendar's exporter.

I had done some testing with importing contacts locally, merging stuff and I ended up with duplicate birthday events. By disabling the calendar on Disroot's Nextcloud and enabling it again, reimporting my adressbook fixed it for me.

## RSS feeds

This was quite a pain to get back, actually. I had not made an OPML backup in a while from FreshRSS, and I could not use Newsboat to retrieve anything from the cache. I had tried Fluent Reader a while back, and it provided OPML exports, which was lacking on all of my Android FreshRSS clients for some reason. I lost a couple feeds, but not as many as I thought.

## Books

I had some books in the SD Card which I was able to recover successfully, since the database used by my web front-end is compliant with Calibre, I was able to import it to my computer quite easily.

## Other Files

As I said, since I placed most of my files in the external hard drive, nothing of value was lost. There were some small files and things in the SD card, which I was able to recover too, as the books mentioned before.

# Finishing up

After checking that most things seem to be working fine in my SD and HDD, I will probably try to get it to work again by plugging a monitor to my raspberry and checking whats up. For now I managed to recover almost everything without problems.

Pi-hole and other services will have to wait for now, I guess.

