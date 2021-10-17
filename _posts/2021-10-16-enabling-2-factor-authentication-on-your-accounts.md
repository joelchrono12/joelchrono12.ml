---
title: Enabling 2FA everywhere ain't easy
header: Enabling 2FA everywhere ain't easy
description: Since the Twitch leak that revealed quite a lot of data and source code, I got the urge of evaluating all of my passwords and authentication methods, and I got into another password cleanup phase, I was surprised to see 2FA is still not implemented everywhere.
tags: security privacy foss detox
permalink: /blog/enabling-2fa-aint-easy/
layout: post
date: 2021-10-16 20:20:20 -0500
host: fosstodon.org
username: joeligj12
com_id: 107114246270751675
---

So ever since [I switched to pass](https://joelchrono12.ml/blog/pass-unix-manager/), I have really enjoyed my time and improved the state of my accounts bit by bit.

By now its old news, but the Twitch leak happened the same day I was getting my vaccine, and while waiting I talked a friend who was worried about the security of his account, turns out, both of us as soon as we woke up changed our passwords and got ready to get the shot (Astra Zeneca btw).

Regardless, because of this and other conversations in the Fediverse, I decided to check my accounts once again, change some passwords and [enable multi-factor authentication](https://en.wikipedia.org/wiki/Multi-factor_authentication) everywhere I could. I already had a ton of accounts with it, but I knew I had ignored some sites since I didn't care enough back then, or I didn't bother to find the option.

Basically, MFA allows you to get a unique code that changes over time. This means that even if someone gets access to your password, they only have 30 seconds to try and guess the code until it changes. Sadly, not every website implements this feature properly. Twitch for example, requires you to add your phone number first, even if you don't use MFA via SMS and use an authenticator app, the most recommended way of getting the codes.

I was sad to see that less than a third of all my online accounts provided good MFA support. I have like 150 accounts total, and [I used to have a lot more](https://joelchrono12.ml/blog/cleanup-your-pwmanager/), and while some don't really need it (local accounts, router passwords), there are is a big amount of sites that don't even bother for some reason.

Some interesting places that **do not offer** Multi-Factor authentication are the following:

- [**Vivaldi**](https://vivaldi.net): While I really like this browser, the lack of OTP based MFA was a little annoying, they have an *Encryption password* that is just a second password apart from the one you set yourself, however, both are of the *something your know* type ([which is not enough, at all](https://www.cs.cornell.edu/courses/cs513/2005fa/NNLauthPeople.html)), while MFA is *something you have*. It looks like there is a [thread about implementing MFA](https://forum.vivaldi.net/topic/33950/two-factor-authentication-scheme-for-vivaldi-net-account) in their forums, so hopefully the devs work on it soon.
- [**Matrix**](https://matrix.org): I kinda want to give Matrix a pass, even tho there is no TOTP based authentication, it still requires *something you have*, in this case, another device, to authenticate your session and gain access to encrypted chats. Still, there is a lot of metadata still accessible, which can be very very compromising.
- [**Spotify**](https://spotify.com): It does not surprise me at all, this streaming service is getting more and more problematic as time goes on. I *still* use it, because it *is* convenient, and I can't afford to pay for music in something like [Bandcamp](https://bandcamp.com). Still, no way to secure an account.
- [**HackerNews**](https://https://news.ycombinator.com/): This is a news aggregator that is quite similar to Reddit. To me, all the data here is basically worthless, I do use it but I don't comment often. Still, it would be sad to have to remove the email alias I assigned to it in case there is some leak.
- [**Wikipedia**](https://wikipedia.org): Well, this is the place I get my homework from. Everyone can contribute, there are a lot of articles about basically everything. As far as I could tell, while this account is not important for me either, no MFA still sucks. [Fandom](https://fandom.com), another Wiki used to create sites for specific topics, comics, movies, etc does not support it either.

There are many other sites that don't have MFA and there are also some that surprisingly delivered. Stuff like the [WCA](https://www.worldcubeassociation.org), which is a site that keeps tracks of speedcubing competitions and world records is the kind of website that I would expect to not have the highest security, and yet, they actually did it. [Mathworks](https://mathworks.com) and [Autodesk](https://autodesk.com) also have it, which is quite surprising, especially taking into account that National Instruments nor Texas Instruments offer the option (Yes, I study Engineering btw)

Anyways, this is a friendly reminder to check if you have MFA enabled in all of your accounts that support it, and its important to encourage the developers of  every account you log into, so they get to work on it.

This has been day 58 of [#100DaysToOffload](https://100DaysToOffload.com). I have once again taking a while to post something, but that's how it is sometimes. Anyways, have a good day!

