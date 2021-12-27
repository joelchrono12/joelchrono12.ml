---
title: Self-hosting Nextcloud
header: Self-hosting Nextcloud
description: After my classes using my Raspberry Pi for many handy projects, I decided to now use it as a Nextcloud server, and I might try and set it up for other things as well
tags: selfhost raspberrypi project foss privacy
permalink: /blog/self-hosting-nextcloud/
layout: post
date: 2021-12-26 18:00:00 -0500
host: fosstodon.org
username: joel
com_id: idcomments
---

So, as I previously stated, I am very happy I got to have a Raspberry Pi, it is the kind of gadget I would have loved to have earlier in my life to play around with doing cool stuff. Being introduced to Linux some year early could have had quite a great impact on my life, and I only wonder what my today could've been.

But anyways, I am happy with how things have turned out, since I can still have fun and experiment with what I got today. So since my semester is over and I no longer have an academic use for my Raspi right now, I decided to set it up as a Nextcloud server for my family and personal use.

I have selfhosted a lot of cool services on my Pi [in previous times](https://fosstodon.org/@joeligj12/106891573076715442). Stuff like Radicale, Miniflux or Pi-hole. But because of University, I ended up losing all of them because of some problems that made me have to reinstall my OS, I wasn't happy about it, but I was running a distro that had some missing packages, so I wouldn't be able to do my school projects unless I distro-hopped.

The point is, I decided to follow [this tutorial](https://pimylifeup.com/raspberry-pi-nextcloud-server/), and after finally figuring out how to enable PHP8 on my apache server, I got it all working just fine. I won't be able to really explain everything, but the tutorial covers it quite well and the part of enabling modules is a matter of looking it up (`a2enmod` is the command needed).

The problem now was, how do I access it from outside my LAN? I had already said  many times that I could not open my router ports since I am behind a NAT and as such, I can't really access my public IP and forward ports or stuff like that.

However, I discovered a tool/service called ZeroTier that basically let's me be own boss and create my own network of devices. I didn't even need to look up at a tutorial to figure how it works. ~~But if you want one, [there you go](https://pimylifeup.com/raspberry-pi-zerotier/)~~.

Now all I had to do was download the app for my phone that works like a VPN and gives me access to my Nextcloud instance from anywhere in the world. The app is FOSS, But it isn't on F-Droid, so I went with the [a fork of it](https://github.com/kaaass/ZerotierFix), just to have it my way and get it via [IzzyOnDroid's repo.](https://apt.izzysoft.de/fdroid/repo/net.kaaass.zerotierfix_8.apk)

So yes, I now have my own instance of Nextcloud. Right now I'm only using my SD card to store everything, but I am planning on getting a 2TB external SSD to be able to mount it and get more storage for it. 

This is day 66 of [#100DaysToOffload](https://100DaysToOffload.com)
