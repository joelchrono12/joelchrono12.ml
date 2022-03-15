---
title: Logging out of YouTube
header: Logging out of YouTube
description: During the last couple of days I had been looking for ways to get rid of YouTube's influence on me as much as possible, also, Vanced died
tags: lifestyle detox degoogle
permalink: /blog/logging-out-of-youtube/
layout: post
date: 2022-03-14 22:03:00 -0600
host: fosstodon.org
username: joel
com_id: 107960637147275526
---

Ever since I read yet another post by [Edel](https://fosstodon.org/@edel) about how she has watched [less YouTube videos over time](https://erzadel.net/why-ive-been-watching-less-youtube-videos/) I too wanted to put some thought into my usage of the service.

I have not watched as many videos lately, because I have been reading books and manga quite a lot, and I recently entered my community service at University (basically I work for them for free). But I still decided to take some action to reduce my temptation to lose myself into YouTube rabbit holes, since I know that even if its not a problem now, it is bound to happen in the future, as it has happened many times, despite my previous efforts.

# Changing YouTube

The first thing I tried was installing an add-on that I heard of in, well, a YouTube video about distractions and such (I probably kept watching videos about that topic for a while...) named [DF YouTube](https://addons.mozilla.org/en-US/firefox/addon/df-youtube), which allows you to have a *distraction free* experience by disabling the feed, comments, recommendations, etc. However, the extension has not been updated in a while, and I realized I can just block those elements using UBlock Origin.

My main focus was to look at YouTube as its most essential form: a **search engine**. I only left a search bar for the main page, and the video frame, description and comments for each video page. It was all looking pretty nice, I also added the Return YouTube Dislike extension, because its nice.

At some point I restored the discover page because I tried another extension that allowed me to group subscriptions and keep track of them without an account, named [PocketTube](https://yousub.info/), and it didn't show its custom feeds if I disabled the whole thing.

# Changing Browser settings

Another thing I decided to do a while ago, and came quite handy now, was deleting all cookies and site data from my browser (which is still Firefox) by default, so I only white-list the websites I actually use. I decided to log out and remove YouTube from the white-list, I also assigned a Firefox container for it, so its pretty much unable to track my movements outside of itself.

However, after a couple searches or links clicked on a browser session, I can tell YouTube figures out some stuff and shows things that are actually atractive to me. Restarting the browser session can fix it, but realizing how effective it was at fingerprinting my interests, I decided to take this a step further and stop using youtube.com altogether.


# Using an alternative front-end

There are YouTube alternatives such as [Odysee](https://odysee.com) and [Peertube](https://joinpeertube.org/), but there is just not enough content for my taste, I know the purpose of all of this is to restrain my YouTube consumption, but not to such a degree just yet.

I already knew about [Invidious](https://github.com/iv-org/invidious) and other YouTube front-end alternatives,  but I went for a [Piped](https://github.com/TeamPiped/Piped/) instance I was already using before. There are also things like [Freetube](https://freetubeapp.io/) which is a native client available for Linux (and others), but I'd never had any luck with it, since it slowed down when importing my Newpipe subscriptions and was quite buggy for me.

The Piped front-end is quite light, and it worked just fine, so I decided it was worth using instead of a client. There are also some bash scripts, rofi scripts that use mpv and such, but I didn't feel like going that far.

Also, while writing this, I decided to check out some invidious instances and realized they are not as slow as they were months ago when I first tried it, so I might consider switching to it instead, although as I said, Piped is a lot more minimal.

# What about Android?

Well, if you asked that question yesterday, I would have probably told you to go with Youtube Vanced.

But [YouTube Vanced is dead](https://nitter.net/YTVanced/status/1503052250268286980). Going back to Newpipe then!, I actually prefer it over Vanced, but it has some problems on Android 12, which I use, so PiP doesn't work as well and takes over the entire screen, disabling touch for everything under it. There is an adb command I used to fix it ~~(I don't remember it now)~~:
```
adb shell settings put global block_untrusted_touches 0
```
Now I can use it just fine now again, even if its still a bit less polished than Vanced and the official app. Also, keep in mind that this command can **leave you vulnerable to malware.**

There is another very promising client that uses the proper PiP API and works wonderfully, named [SongTube](https://songtube.github.io/) which has an awesome user interface and is a bit more suited for music (as the name implies). Sadly, it doesn't have a way to import subscriptions, which is the reason I haven't fully switched to it, but if you don't mind, I recommend giving it a try.

# Wrapping up

YouTube is such an incredible tool, but it had turned into quite a problem for me, with suggestions and tracking that, even though I was aware of it, I chose to bear with it because of how good it is at knowing what I want.

I might still struggle to leave it behind, I know returning to its intended experience (minus the ads, clearly) is just a few clicks away for me, I could just keep using it as is, enjoy it, spend hours on it and tell nobody, but I really want to stop that.

There are tons of Vanced users migrating to Newpipe and asking for ways to log in, leave comments and even get their recommendations tab back. I know I can't force anyone to stop depending on the algorithm, some might have legitimate reasons. But, regardless, this is what I chose to do, and I hope it helps others who are also struggling with this. Let us be the ones in control instead of delegating our consumption habits to some soulless algorithm.
