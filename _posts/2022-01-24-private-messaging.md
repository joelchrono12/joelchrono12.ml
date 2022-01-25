---
title: Private messaging
header: Private messaging
description: A quick overview into some of the ways I've used to communicate with family, friends and the internet in a secure and private way
tags: android communication internet privacy security foss
permalink: /blog/private-messaging/
layout: post
date: 2022-01-24 18:05:32 -0600
host: fosstodon.org
username: joel
com_id: idcomments
---

When I got started into Android and customization, I always loved the idea of alternative platforms, I never settled with the defaults, regardless of the phone or device I used in any aspect. My favorite kinds of apps where the alternatives to the default. Back then I didn't care that much about FOSS, so apps like QuickPic, Dolphin Browser, Telegram, Imagine for Instagram and a lot of others where usually installed in my phone, simply because I liked using something else, especially if it meant it was better, which was the case with most of them when compared to the more popular options.

From there to nowadays, a lot of things have changed, I don't care about features as much as I care about the freedoms that software and services allow me to have over the code, as well as my own data. 

When it comes to messaging, there are now a lot more options that can be compelling even for users who don't particularly care about their privacy (even though they should), since they also provide with most of the features that popular app which don't respect our freedoms offer.

# Telegram

Telegram was the first messaging app I tried that wasn't Whatsapp, and I really liked how it worked, when I started using it I didn't really know how important encryption is, I just assumed that the people behind it wouldn't lie, and since the YouTube channel recommended it, then it must be good. 

Of course, there are a lot of opinions regarding how Telegram doesn't use E2EE by default, and how they have access to all of your messages, but I still give it some benefit of the doubt since I still have to see a news article mentioning a data breach of their servers or anything like it.

The truth is that the features it offers are simply great, I personally now only use it for chat groups (which shouldn't be considered private anyways), channels and for quick file sharing to myself or family who have it installed.

I don't know why nobody has tried to fork Telegram's UI and apply a different protocol or backend to it, it shouldn't be that hard, *right*?

# Signal

I really like Signal in principle, but I am not a fan of their crypto business. I just can't get anyone to install it, and that's probably my fault due to the time I already spent trying to convince me to switch to Telegram back when I still used it for personal messaging and such. 

This app really needs usernames, because there is no other reason to use it otherwise, at least in my case. The moment they do, I honestly have no problem ditching Telegram (or creating a different) and probably sticking to a fork client that doesn't include any of the Crypto nonsense.

# Matrix

Matrix is growing more and more, it is actually a protocol that can be used by any software working as a client. I really like it, but the apps that use it are not of my liking, Element, which is the recommended client, is simply too slow and unresponsive for me, and it tries too hard to look and feel like Discord. 

The ability to host your own matrix server is awesome, but it comes with some problems too, since you are not only relying in your own server, but also in the server that hosts your friend or family. For all you know they haven't even enabled HTTPS or something dumb like that. But if they are not self-hosting, then they are probably using matrix.org, just like 99.9% of matrix users, which means that decentralization isn't really a thing, and there is a lot of metadata that can still be obtained from it. 

A lot of its sponsors are also into crypto stuff, and I wouldn't be surprised if the project starts becoming even more bloated than it already is.

# XMPP

I know a lot of people don't even know this, even among the couple of readers I have, but somehow XMPP is the place where I have had some of the best conversations with people from the Internet. Telegram has always been for groups, I don't give my phone number so Signal isn't for Internet people, and Matrix is also mostly for communities. XMPP is really simple and works both with PGP and OMEMO based encryption, there are quite a lot of good clients to choose from, and has great multi-platform support. The only thing about it is that it can be a bit too simple if you want stickers and such, and the protocol is quite old, so the codebase is probably quite patched up. 

Nevertheless, if you don't wanna use PGP encrypted email, I would say this is the best way to chat with me privately, unless...

# Briar

This morning I felt quite inspired to try out Briar, a peer to peer communication platform that also works over the Tor network when it needs to. The way it works seems to be incredibly secure, and its also not as invested into the crypto world like Signal and Session, another app which is quite similar and I'll talk about later.

I decided to do a quick post in Mastodon and invite some people to chat a bit via Briar, and I have to admit, the experiment went a lot better than I thought. I think its fairly clear that this app is the most secure and private one of the bunch, there is nothing stored in any server, simply your device and your friend's. Of course this comes with some caveats, but at least for most conversation, it is pretty good. The app is also in continuous development, so a lot of features are going to be implemented in the future.

It has some problems, but they are mostly quality of life improvements and some details that make the user experience a bit clunky, but its a lot better than last time I used it, quite a while ago.

They recently launched a Linux client, which is super alpha software as of now, since it doesn't support anything but one to one messages, but its a good start!

Some interesting features are Private Groups, where only you can add people, Forums, which are basically private groups where other people can also invite people, and Blogs, which are public posts for everyone to see. You can even add RSS feeds for you to read, and you can "Reblog" them, so your contacts can have access to it, without making any connections to the original website!

I really, really like this app, I will try ot use it more often, make sure to reach me out if you want my contact link, or I might post it publicly later in my [contact page](/contact).

# Session

I kinda didn't feel like talking about Session, mostly because I felt it was less reliable than Briar and they seem to be as involved with crypto currencies as Signal, if not more. The development is also mainly done is Australia, which is not the place you want your private services to come from. Of course, this is all personal opinion, they still work over Tor and the code is still there for everyone to check, I just don't feel as comfortable recommending this service compared to previous mentions for one reason or another. 

Of course, I am not against it, I can still use it just fine and you can help me find out why its actually not as bad as I make it to be by leaving a reply or sending me an email.

# Wrapping up

Se yeah, I feel like this was it, as you can see this is not the biggest dive into what makes each of this apps special, I didn't mention stuff like Threema, Tox or Jami because I don't actually use any of them in any degree, and I have had at least some experience with the services I actually talked about.

I guess this was it for today! This is post 93/100 for [#100DaysToOffload](https://100daystooffload.com)







