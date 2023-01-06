---
title: Yunohost to the rescue
header: Yunohost to the rescue
description: Reviving my Raspberry Pi led me to Yunohost, which was quite tedious, but it might end up easier than what I used before in the long run.
tags: raspberrypi selfhost linux internet
permalink: /blog/yunohost-x-tailscale/
layout: post
date: 2022-08-13 14:31:22 -0500
host: fosstodon.org
username: joel
com_id: 108817299062320951
---

So I was saying I was lazying around and stuff but I sure did act kinda fast on fixing my issues with my Raspberry. Sadly pluggin a keyboard and a display did not work, I had a black screen. So, to avoid trouble, I decided to use a different SD card and install another distro. This time I went with [Yunohost](https://yunohost.org), which is quite more user friendly and provides a web interface to install and manage users and applications.

Its more bloated than DietPi, but it works, and it provides a lot more applications, which require less fiddling around with the terminal too.

The only problem is that it was asking me for a domain from the start. Since I already have a domain I just used it, but it provided me with self-signed certificates. This was fine, I could trust them, but I wanted to get my own certificates going.

I use Porkbun as a domain provider, it works great and has its own certificates, which I can use no problem. You can get your ssl certificate from a link like this, once you log in: `https://porkbun.com/account/ssl/yourdomain.com`

I pretty much followed [this guide to use custom certificates](https://yunohost.org/en/certificate_custom), except that most of it explains how to turn the files to the `.pem` format which is already provided by Porkbun, so I don't have to fiddle too much with the `openssl` and `wget` commands used in the guide, I simply used `scp` and renamed them to be how Yunohost expects them.

Porkbun provides these certificates but they expire in 3 months, but since I am the only one using my stuff, I just download them again from them if I need.

One thing I really liked here is the Single Sign-On feature, so I use a single login screen and gain access to all the services I need, its just great.

Oh, I almost forgot, Tailscale can't be installed from the web interface, but I can ssh into my pi and, since the distro its pretty much vanilla Debian 11, the installation is as simple as it gets, so accessing my stuff from outside my local network is now possible.
{% include reply.html %}
