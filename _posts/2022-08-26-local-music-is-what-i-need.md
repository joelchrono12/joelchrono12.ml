---
title: Local music is what I need
header: Local music is what I need
description: So, I was running Jellyfin, I tried Navidrome, but honestly, I probably don't need all of that at all, do you?
tags: music selfhost linux android
permalink: /blog/local-music-is-what-i-need/
layout: post
date: 2022-08-26 09:25:58 -0500
host: fosstodon.org
username: joel
com_id: 108889854813355502
---

So there was a post I read on my RSS feed, by fellow fosstodon user, [Nathan Byers](https://fosstodon.org/@nathandyer), about [what you actually need to build a local music collection](https://nathandyer.me/2022/06/13/music-library.html). I found it quite a nice read, and it made me think about my current setup, using Navidrome (previously Jellyfin, but since I moved to Yunohost I still haven't done it) to stream music to my device.

Then I realized something that was quite revealing.

I don't have a mobile data plan, and the wifi at school and most public places, sucks.

# Well, why don't you just download the stuff you want from your server?

That's a very valid question dear reader, but does it make sense for me to do it? My music collection is not that big, yeah I do have some flac files and others are just mp3, but the truth is I don't even reach 10GB in total.

Besides, navidrome music clients, while quite good, are still not as feature rich, and navidrome itself limits the customization a lot, I would have to upload music to my server already fully tagged and such, since write access is not allowed, its a good security measure, but annoying when I realize I made a mistake when tagging my music and details like that.

Jellyfin is not much different, basic things like playlist creation tend to fail even with clients such as Finamp. The functionality is better when online, but since I would normally just download albums and create/edit playlists on the move (offline), its not really a good experience.

# So what are you gonna do then?

Well, first of all, back it all up properly. I already did a big mess one time where I lost like a fourth of my collection because of symlink shenanigans.

I decided to go with Syncthing, because its the best thing ever, and I will have 3 separate copies of my library. This means more storage is in use, but I don't really have a problem with that, after all, if you don't have 3 copies of something, it doesn't exist, right?

Besides, this means any changes I do to the files from one device will reflect properly in the other 2, so I can use something like Kid3 or Picard on my desktop and make my phone pickup the metadata pretty much inmediately.

I can also make a decent folder structure, since I hate having a single Music folder with all the music all over the place, please don't do that, but if you do, *unsubscribe from my RSS immediately*.

## Programs I use for playing, editing and scrobbling

A neat feature that both Jellyfin and Navidrome had, and that I use during some of my [Monthly Summaries]({{ site.url }}/tags/monthly) is music scrobbling, which means keeping track of listened tracks. I was wondering if it was possible to do the same thing, and I realized that its actually really easy!

Installing [Simple Scrobbler](https://simple-last-fm-scrobbler.github.io/sls/) from F-Droid did the trick, I use [Listenbrainz](https://listenbrainz.org/) to track my music consumption, it works quite well.

For listening to my music, I use [Retro Music Player](https://retromusic.app/), its pretty much the best looking player on F-Droid, and it also supports editing opus files. Phonograph Pro is another great option, but I could not edit opus files there, the interface is starting to look outdated to me too.

On my desktop, I am using Elisa, which is the default music player in KDE Plasma, which I am using on Fedora. It does not seem to recognize opus files as music files though, so I am looking for other options. I don't really play music from my computer though.

Editing metadata is done, as I mentioned, with [Kid3](https://kid3.kde.org/), but there are tons of other programs too, or just use the music player itself, as I do on Android.

# What about you?

I am pretty happy with my setup right now, it works, it backs my data on multiple places and keepts it synced, and the experience of playing music has improved a lot.

Once again, Syncthing comes to the rescue, one of the things I have doubts about is how much does it affect the performance and lifespan of hard disks. I hope not that much, its not like I'll add music every day, I should probably pause the folder from time to time and just have my phone and laptop exchange data, since I download music from my computer most of the time anyways.


One last question remains: how do I get music? Well, I don't know what to tell you, I usually *seek into my soul* to find the music I need. I've gotten music on Bandcamp too, ripping it from CDs a couple times, or using something like [SpotDL](https://github.com/spotdl/) may be up your alley if you don't care about the quality as much.



