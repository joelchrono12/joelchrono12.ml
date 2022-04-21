---
title: Rethinking Self-hosting needs
header: Rethinking Self-hosting needs
description: Having a Raspberry Pi has allowed me to host a lot of alternatives to popular cloud services myself, but I have been thinking about how much do I actually need to host the stuff I do.
tags: selfhost raspberrypi
permalink: /blog/rethinking-self-hosting-needs/
layout: post
date: 2022-04-21 16:40:00 -0500
host: fosstodon.org
username: joel
com_id: 108172308619938700
---

Honestly, I've had a lot of fun learning how to install and mess around with MariaDB, Apache and other tools for quite a while. And I decided to host my own services for a lot of things. But looking back at the things I actually need and use, I think I could do just fine without most of the things I've installed on my Raspberry Pi. So I will go through all the tools I use and why I don't really need them, or why I actually do.

# Syncthing

This is probably the best syncing tool I know of, and its probably more than enough for a lot of your needs too. Interestingly enough, its the only thing I don't actually use on my Raspberry Pi, since it doesn't need a server, it just works in a peer to peer network between the devices, which share folders with each other.

I use it every day, and I will definitely keep going with it, since its so awesome, if a bit hard to understand when presented to new people.

Among other things, I use Syncthing to:
- keep my passwords up to date (Currently using KeepassXC on my laptop and KeepassDX on Android).
- sync my Arcticons icons with my phone (So I can test them quickly and see how they look).
- sync other general files with my devices and family.

# Nextcloud

I do use Nextcloud, but it's not really because of the file server. The only features of Nextcloud I actually use are the Contacts, Calendar, and maybe notes, which I enable and disable quite often (I've been looking for note-taking apps lately, Joplin is my current choice).

The thing about Nextcloud is that its main feature is not really that needed for me. I kinda would rather just plug an external hard drive and organize its folders myself in a normal file manager instead of dealing with a web based GUI that is honestly not that fast. The worst thing is that I can't even share files with others, which would be actually useful, since I can't open my router ports and I currently run all these services in a private VPN using Tailscale, which is kind of awesome, but makes it impossible to share stuff to people outside my network.

Right now I have been considering switching to Baikal, a DAV server just to get Contacts and Calendar for personal use, or at least OwnCloud, which gives me a web interface to add contacts and events, and seems less "bloated" than its fork. Radicale is another option for a basic DAV server that I've used before, but since Vdirsyncer, a terminal utility [quite essential for my current setup]({{ site.url }}/blog/davx5-and-vdirsynced/), does not support it, it's not an option for me at the moment.

# Jellyfin

I run into a similar problem with Jellyfin, yes I get a pretty interface and nice metadata, its honestly quite great, but, I only use this for myself at home, why don't I just use Kodi and plug the hard drive whenever I actually need it?

The only other thing that would be kinda nice is music streaming, which is honestly quite good, but maybe not enough of a reason to keep it up? I am still considering keeping this one alive for now.

Besides, while I got a Raspberry Pi 4 with 8GB of RAM, which is quite capable, it still takes a while to re-encode stuff, so I have been compressing and re-encoding all of my totally legally obtained media files in my computer first, then using `scp` to move them to the server once they are ready, which takes quite a long time. I could just enjoy the content stored on my local disk and not worry about stuff, but of course I wanted to host it all there.

Maybe I should just rework the way I do things, its not bad at all, I will keep using it. Maybe I'll just stick to streaming music or find better ways to rename files without making totally legal torrents stop seeding.

# Gitea

I actually didn't even talk about this on my blog at all, but I installed Gitea on my Raspberry and never actually used it, what's the point of such a pretty interface if only I use it and I prefer using the terminal instead?

I am going to delete this since it makes no sense for my use-case, if my ports were open it would be different tho, since a couple people might be interested on my dotfiles or something.

# Pi-hole

This is great, a local DNS provider that keeps all the devices at home ad-free (for the most part), I am actually really happy with how it works and it made the Raspberry Pi completely worth it, since it was also the main reason I started all of this journey in the first place, due to a Linus Tech Tips video.

Not a lot to talk about here, it works and I will keep it!

# FreshRSS

The problem with FreshRSS is that its not as popular or known as I hoped. There are not enough good android clients for it. I currently use Readrops, but it has almost no customization and it has not been updated in a while, other clients are even uglier (with respect to the developers). The only pretty client I know of is Fluent Reader, but its UI looks like iOS and doesn't fit at all with my device, but its pretty cool and works fine.

Another thing is that FreshRSS support on Newsboat is only on newer versions that are not supported on Linux Mint, and even though I said I didn't really mind that since the Web GUI was there, its still kinda annoying.

I am thinking about going back to Miniflux even if I have to setup PostgreSQL again alongside the already existing MariaDB.

# Calibre Web

Since I got into books again last month, I also got a bit invested into Calibre, a great tool to manage books, metadata and syncing with e-readers and other devices. It is pretty cool, but the web server was kinda bare bones and I didn't really like it. I found out about [Calibre-Web](https://github.com/janeczku/calibre-web), a web app that can access and display a Calibre database in really good way which looks and feels a lot better than the official version.

Again I don't really use this too often, but I have to say that when I do, it works pretty nicely. The Calibre desktop program does not seem to work well with network storage though, so I have only stuck with the Web version since I installed it. However, going back is a matter so moving the files around, which is great.

# Photoprism

This is a Google Photos kinda thing, but I really don't think I need it, My photo collection is not that big, I probably have more downloaded wallpapers on my phone compared to actual photos. I've been meaning to take pictures of meaningful moments a bit more, but I also like to think I can enjoy something in the time and place it happened and leave it at that. 

Anyways I don't want this to devolve into some existential ramble. The point is, I will be removing this and I kinda hate that I've duplicated a bunch of stuff to test it out without actually thinking if I needed it first. 

Allow me to ramble a bit about this, I did a couple Google Takeouts in the last few months for different reasons, I also did it for different Google accounts back when I was [cleaning up my password manager]({{ site.url }}/blog/cleanup-your-pwmanager/), and I feel like I have the same pictures in a bunch of different places. At some point I also compressed a ton of pictures with ImageMagick while keeping the duplicates, and I think I did that in a different folder too. Some time later I tried Cryptomator with some of those folders, and since I didn't trust it fully, I remember I made some duplicates just in case things went wrong. In addition to all this, I distro-hopped like 2 times during last year, which means I probably lost track of some things while backing up others. Its all a terrible mess.

I like the concept of backing stuff up in multiple places, but it sucks when you don't even know what you backed up and what you didn't. I have already done some spring cleaning tho, and I decided to go wit Cryptomator again, this time using MEGA, since I got like 50GB for free and I only use like 6GB for those photos and wallpapers.

# Wrapping up

So yeah, this was supposed to be a short overview of the services I use and if I really need them but it ended up being a bit more rambley than expected.

I guess I got a little bit too excited about the concept of having everything in my own server, that I didn't even realize that for most things, a simple hard drive or USB stick is enough. Or Syncthing. Syncthing is fine too.

There is this interesting protocol which I think I've mentioned before known as [DecSync](https://github.com/39aldo39/DecSync), which works with Syncthing too and can sync calendars, contacts and RSS with simple folders shared across devices. It has not been updated for a while, but its concept is pretty cool and I have been thinking about giving it a fair chance one of these days.

Well, that's a problem for future me. Thanks for reading.
