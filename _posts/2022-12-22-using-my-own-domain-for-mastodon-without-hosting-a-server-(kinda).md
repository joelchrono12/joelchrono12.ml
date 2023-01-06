---
title: Using my own domain for Mastodon without hosting a server (kinda)
header: Using my own domain for Mastodon without hosting a server (kinda)
description: So I saw this way of making myself easier to look up and its quite cool I think
tags: tutorial blog fediverse
permalink: /blog/using-my-own-domain-for-mastodon-without-hosting-a-server-(kinda)/
layout: post
date: 2022-12-22 17:17:49 -0500
host: fosstodon.org
username: joel
com_id: 109559951580325890
---

This whole tutorial is based on [another blog by Scott Hanselman](https://www.hanselman.com/blog/use-your-own-user-domain-for-mastodon-discoverability-with-the-webfinger-protocol-without-hosting-a-server/), he also links to a bunch of other resources that I don't really need to repeat here..

Basically, what I mean with this title is that you will be able to look me up as `@joel@joelchrono12.xyz` in my domain. This setup actually makes it so you can type `whatever@joelchrono12.xyz` and it will still just show up my actual Fosstodon account. Regardless, I am a single person, so I don't mind.

This quick tutorial is focused on Jekyll, but you should be able to figure it out using this [guide too](https://guide.toot.as/guide/use-your-own-domain/#5-static-files).

Pretty much paste this into a file in the root of your website and call it a day. Mastodon will do the rest.

```json
---
layout: none
permalink: .well-known/webfinger
---
{
    "subject":"acct:joel@fosstodon.org",
    "aliases":
    [
        "https://fosstodon.org/@joel",
        "https://fosstodon.org/users/joel"
    ],
    "links":
    [
        {
            "rel":"http://webfinger.net/rel/profile-page",
            "type":"text/html",
            "href":"https://fosstodon.org/@joel"
        },
        {
            "rel":"self",
            "type":"application/activity+json",
            "href":"https://fosstodon.org/users/joel"
        },
        {
            "rel":"http://ostatus.org/schema/1.0/subscribe",
            "template":"https://fosstodon.org/authorize_interaction?uri={uri}"
        }
    ]
}
```

Pretty easy right? Now after pushing that to your server you should be able to find yourself with ease, at least within Mastodon. I am not sure how it would work on Pleroma or other Fediverse tools. Still, it is quite cool.

This won't change your username handle per se, it will just make it so you can search me by my domain. Which would also make it easier to switch instance without having to alter mentioning my username and stuff.
{% include reply.html %}
