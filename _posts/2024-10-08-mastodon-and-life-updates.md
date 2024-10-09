---
title: Neat Mastodon links, spam wave, more Switch games
header: Neat Mastodon links, spam wave, more Switch games
description: Mastodon got a new coat of paint on its latest update, accompanied by a ton of spam coming from multiple instances, and I also got a lot of new games for Switch
tags: ramble thoughts internet gaming jekyll
layout: post
date: 2024-10-08 22:27:52 -0600
host: fosstodon.org
username: joel
com_id: 113275732872493432
---

Quite a lot of stuff happened this week, and I kind of want to do some week notes style blog. This is very much not it just yet, but it is just a bunch of small things that happened all bundled together in a single blogpost.

## Mastodon update, cool article author links!

So, Mastodon 4.3 just came out for Fosstodon, the instance I use and help moderate, and there's now a pretty cool feature for bloggers and websites to display the Mastodon account of the author of articles and stuff!

So, I just added this line to my headers and let's hope it works well!

```html
<meta property="fediverse:creator" content="@joel@fosstodon.org" />
```

I haven't tested this just yet, but this blogpost should work already! It [was introduced earlier in the year](https://blog.joinmastodon.org/2024/07/highlighting-journalism-on-mastodon/), but it's now available for everyone to try!

## A spam wave is upon us

At the same time, a huge wave of random spam accounts started popping up, and I gotta thank the people in Fosstodon for reporting all of those accounts, I had a good time spamming the ban hammer on them, it had been a while since the last time I used my moderation powers so frenetically.

## Changing my urls formatting

Another thing I did out of nowhere is change my permalink format to `/date/YYYY-MM-DD-slug` which is something based on a post by [Bix Frankonis] on [url formats and SEO pandering](https://bix.blog/posts/link-me-like-one-of-your-french-urls). It's a bit rambley and opinionated, but aren't we all. But this line explains the main reasoning:

> Blog permalinks should contain human-readable temporal data. It’s a hill on which I’m willing to die metaphorically.

All of my old links will still work, thanks to the super neat [jekyll-redirect-from](https://github.com/jekyll/jekyll-redirect-from) plugin, and to apply this change globally, I just had to add the following line to my `_config.yml`

```yml
permalink: /blog/:year-:month-:day-:title
```

For more information on formatting permalinks on Jekyll, you can check [their website's documentation!](https://jekyllrb.com/docs/permalinks/)

## New Switch games!

Ever since the article I wrote about my obsession with [collecting Switch games](/blog/2024-09-24-physical-game-collecting-spree/) I have acquired *Castlevania Advance Collection*, *Dragon Quest XI S Echoes of an Elusive Age* and *Nintendo Switch Sports*. I also pre-ordered the pysical edition of *Balatro*, *Marvel vs Capcom Fighting Collection* and *Outer Wilds*---which is already out, but I wanted it for the free shipping. I also ordered *Pokémon Legends Arceus*, *Hades* and *Hollow Knight*. As well as pre-ordering---via LRG I'm sorry 🤢---*TMNT: Shredder's Revenge Ultimate Edition* and *Castlevania Dominus Collection*.

I have already played almost 2 hours of *Dragon Quest* and I have to admit I am pleasantly surprised by it. I have been making progress on *Prince of Persia: The Lost Crown* a lot this past week, I am close to beating it, and then I'll probably focus on another Metroidvania to play alongside DQ.

Regardless, I have gotten too many games now, and I really need to stop. But I can't! *Mario & Luigi Brothership* is coming soon!

This is day 79 of [#100DaysToOffload](https://100daystooffload.com)
