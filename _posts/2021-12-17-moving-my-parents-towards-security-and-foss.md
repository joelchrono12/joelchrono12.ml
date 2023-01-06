---
title: Moving my parents towards security and FOSS
header: Moving my parents towards security and FOSS
description: I finally decided to force, I mean, move my parents towards using a password manager and some FOSS applications
tags: foss linux family security privacy
permalink: /blog/moving-my-parents-towards-security-and-foss/
layout: post
date: 2021-12-17 18:36:07 -0500
host: fosstodon.org
username: joeligj12
com_id: 107465250201557951
---

So these past couple of weeks I have finally had some free time to do something I've been meaning to do for a while, move my parents towards using a password manager. It all started when my dad told me he got an email about him having an insecure password, so he wanted me to help him setup something to fix that.

I decided to kill two birds with one stone and setup both KeepassXC and Syncthing on his phone and laptop, because not only is it cool, it would also allow me to create and extra synced folder between him and me, since we tend to share a lot of files and its always a pain sending them either via Email or Telegram, which is what we used to do most of the time. Now all he has to do is drag and drop the files and they will be synced to my device in no time.

KeepassXC it the obvious choice if Syncthing is already there, because it means there is no need to store the file in some server. Its also really easy to have an idea of all the passwords you have to change and it gives you some statistics and reports to see how many insecure accounts and duplicate passwords there are. In his Android device I also installed the KeepassDX client, and I enabled multi-factor authentication in a lot of accounts. I still missed quite a few, because a lot of government or public service sites don't care about security that much here, sadly.

For my mom I decided to go with Bitwarden, for the sake of simplicity. She does not have that many accounts, and she might actually be able to delete a keepass file by mistake just because of the absurd amount of files she has in her laptop. In the end I just changed all her passwords, installed the app in her phone and even recovered some old accounts she had not bothered using.

I also noticed that she actually uses the desktop email client that comes with Windows, which, while kinda decent, is still a Microsoft proprietary product, so I decided to mix it up a bit and install Thunderbird for her.

As far as I could tell she found it pretty nice and the search feature is actually pretty fast and epic. It was quite amazing to see that she had 70,000 emails unread, so I also took care of a lot of those, which were mostly Facebook and Pinterest notifications, because *of course they are.*

I am considering switching her to something like Solus OS, her laptop is from 2013 and has 4GB of ram, it actually feels pretty fast and smooth for how old it is, but that's mostly because of the SSD we got for it.

Anyways, this was actually a longer post, but I closed neovim by mistake and I had forgotten to save the file. But hey, if this is what got in, is because its what I considered actually important!

This has been day 63 of [#100DaysToOffload](https://100DaysToOffload.com)


{% include reply.html %}
