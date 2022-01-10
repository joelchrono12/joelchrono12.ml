---
title: Different services for different needs
header: Different services for different needs
description: Some programs work for a lot of different things, but sometimes there is just too much, but where do you mark the difference between feature rich or bloated?
tags: ramble thoughts foss selfhost
permalink: /blog/different-services-for-different-needs/
layout: post
date: 2022-01-10 10:23:18 -0600
host: fosstodon.org
username: joel
com_id: idcomments
---

The thing that ignited this writing is that I decided to try out Nextcloud News as my RSS feed reader. But to be honest, I was not really that happy with how it worked. It looked pretty nice but there was no way to fully control some little details that made me want to just stay on FreshRSS.

Nextcloud offers a lot of other things that can be quite useful, such as its own email client or even integration with Office tools, it can really become your own set of Google services if you want to.

However, another thing I would love to see is better integration with, well, everything. Yes, I can use Nextcloud News, but at least at first glance, I could not find any generic RSS app that worked with it, there is no support for the Google Reader API or Fever, which narrows the options quite a bit.

Nextcloud also has its own Password manager kind of service, which is good, but makes me wonder why not just adopt some already existing format like Keepass or integrate with Bitwarden. You could use something like Keeweb, and its fine, but its not supported by most Nextcloud password manager apps, which only support Nextcloud's own protocol, so it only works inside the browser, and in my experience, it didn't quite work with keyfile authentication.

Now, switching to something totally different but kinda related, Vivaldi browser is also considered quite feature rich, and even bloated, since it has its own email client, RSS reader and other quite unique features, most of them work quite well, but again, why is the RSS reader not compatible with basically anything other than the Desktop client? It is still in Beta, but why is there no API to begin with, at the very least.

As I said this post is not super well structured, I am basically complaining about software that has a lot of neat features but only work with their own things just because, even when those features are based on open protocols or already have standards that could be adopted in their own services.

Also, I have been considering switching to a selfhosted Bitwarden instance, since DietPi comes with a script that automatically makes it for me, but at the same time I feel a little weird about having too many different services inside a single Raspberry Pi when I could just use a single web service and get into their ecosystem, since such ecosystem is completely under my control anyways. 

At the very least if something breaks, having everything separated should make it a bit easier to recover, I don't know.

What was even the point anyways? I feel like this is nonsense, selfhosting rules, there are too many options sometimes but I still love doing it.

This is day 77 of [#100DaysToOffload](https://100DaysToOffload.com).
