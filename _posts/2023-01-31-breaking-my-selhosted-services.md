---
header: FreshRSS and Nextcloud broke
title: FreshRSS and Nextcloud broke
description: You gotta love when you decide you want to do something completely non-sensical. Its even better if you actually get away with it, mostly without any losses. Its not as funny when the software itself decides to do the non-sensical things though. Here's how I fixed it all.
tags: selfhost raspberrypi rss tutorial
permalink: /blog/freshrss-and-nextcloud-broke/
layout: post
date: 2023-01-31 14:00:00 -0600
host: fosstodon.org
username: joel
com_id: 109785624362657232
---

As my rabbithole on RSS kept going down. I eventually decided to go and import even more feeds to my FreshRSS instance, because sometimes you just feel like the web is terrible and decide run away from it as much as you can, util it is too much of a hassle and the balance returns.

# How I broke FreshRSS

So, I decided to import my Youtube subscriptions, the way I did it was kinda neat. I had found this javascript bookmark that may be better for you, since its *just a bit* faster than using Google Takeout just for subscriptions.

```javascript
javascript:if("https://www.youtube.com/feed/channels"==window.location.href){let e=[...document.querySelectorAll("#main-link.channel-link")].map(e=>{const[,t,n]=e.href.match("/((?:user)|(?:channel))/(.*)$");return"https://www.youtube.com/feeds/videos.xml?"+("user"===t?"user=":"channel_id=")+n}).join("\n");e?navigator.clipboard.writeText(e).then(()=>alert("A%20list%20of%20channel%20RSS%20feeds%20has%20been%20copied%20to%20the%20clipboard.%20\nPaste%20these%20into%20rssmix.com%20to%20generate%20a%20single%20RSS%20feed,%20or%20opml-gen.ovh%20to%20generate%20an%20OPML%20file.")).catch(()=>{console.log(e),alert("A%20list%20of%20channel%20RSS%20feeds%20has%20logged%20to%20the%20console.%20(Unable%20to%20copy%20to%20clipboard)%20\nPaste%20these%20into%20rssmix.com%20to%20generate%20a%20single%20RSS%20feed,%20or%20opml-gen.ovh%20to%20generate%20an%20OPML%20file.")}):alert("Couldn't%20find%20any%20subscriptions")}else%20alert('Please%20run%20at%20"https://www.youtube.com/feed/channels"');
```

All you need to do to make it work is go [here](https://www.youtube.com/feed/channels), scroll ALL the way to the bottom, it might take a while, so use the EndPage key or something a couple of times, or a dozen if you are susbribed to many channels like me. Once done, just run the bookmarklet and all the feed urls will be copied to your clipboard. After that, I found an [online OPML generator](https://opml-gen.ovh/), but you can probably use some bash script too, this time I was lazy.

After that I imported the OPML file to FreshRSS and that's where the fun begun.

For some reason, I thought that adding 1200 feeds at once would be a decent idea, it was not. The import process took a while, a long while. Even if it didn't actually break, it was a pain to use and doing a refresh was painfully bad.

## Bulk deletion of feed subscriptions

I decided to try and remove them. Sadly, as of now there is no way to delete subscriptions in bulk. So I had to fiddle around with the MySQL database via SSH. 

Of course, __before doing all this backing up the database is a good idea__. But I didn't think anything too bad could happen, don't follow my example though.

I ran the following command, after getting into the freshrss database:

```sql
DELETE FROM freshrss_$user_feed WHERE category = 14; -- user is your username
```

Of course, to get the category and table name, you should use commands such as `show tables;` and also checking the category number in the `freshrss_$user_category` with `SELECT * FROM freshrss_$user_category;`. But while I am kinda used to MySQL, not everyone is, I hope bulk actions become a thing soon enough in FreshRSS.

# And now Nextcloud too... 🤦🏻‍♂️

Later I also decided to check my Yunohost admin settings and saw that some of my applications had updates available. Nextcloud is always down for a while when its being updated, so that's all right. 


I was able to login to Nextcloud just fine from the browser, and verify it updated correctly.

However, I noticed that my desktop client couldn't connect, and also DAVx5 stopped working, no luck with vdirsyncer. No matter how many times I tried to authenticate, generating an app password would fail as fail.

I actually did quite a bit of things trying to fix this. I changed my domain name, changed the certificates, compared with the example nginx configuration in Nextcloud's documentation, even a full reboot, nothing worked.

Thankfully, after a while asking around in the Yunohost IRC chat, I discovered [this thread](https://forum.yunohost.org/t/authentication-issues-with-yunohost-11-1-0-with-new-ssowat-version-please-upgrade-to-yunohost-11-1-2-to-fix/23059) that had a pinned solution, which worked perfectly fine for me.

Turns out I am using a testing release of Yunohost that got accidentally tagged as stable, and the best course of action at the moment is going all out and switching to the testing branch, at least until a real stable version comes out. I decided to do the change and after the update process completed, Nextcloud worked fine again. Basically, I just ran this on my terminal:

```bash
curl https://install.yunohost.org/switchtoTesting | bash
```

I am glad this problem got solved so easily and I didn't need to move or edit too many files, because I would have never figured this out myself.

# Final thoughts

Well, at least I changed the domain for a better one, since I was using one of those free domains Nextcloud can give you. For now its all fine.

I also decided to import my subscriptions from Newpipe instead, since I follow less channels, that end up being more meaningul for me than those hundreds of old channels I had in my YouTube subscriptions.

Sadly, Newpipe has no way to export to OPML. So once again I went and parsed their json file using sed and formatted it properly using the tool I mentioned before.

Everything is running as expected now.

I actually made blogs daily blogs for thw whole of January, this is actually quite incredible for me, I think I will take a bit of a break, but maybe not. It depends on how I feel.

This is day 31 of [#100DaysToOffload](https://100daystooffload.com)
{% include reply.html %}

