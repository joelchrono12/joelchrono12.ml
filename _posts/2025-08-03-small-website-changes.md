---
title: Small website updates
header: Small website updates
description: I have made a couple of small changes to the structure of my website, ran into a couple problems, but everything seems fine now
tags: jekyll blog
permalink: /blog/small-website-updates/
layout: post
date: 2025-08-03 16:09:53 -0600
updated: 2025-08-03 17:10:10 -0600
host: fosstodon.org
username: joel
com_id: 114967312253710196
---

It's been a while since I've made post talking about things I've messed around with on my website, so I may as well do one for my 3rd post for [#Blaugust2025](/blog/blaugust-2025)!

## Sharing my last listened track!

I added a little bit of text to my landing page a long while ago, that shows the last song I listened to. This is done using the [Listebrainz](https://listenbrainz.org) API and a small javascript function.

Again, this was already there but I never mentioned it anywhere so, may as well do it now.

```js
async function getLatestListen(username) {
	const url = `https://api.listenbrainz.org/1/user/${username}/listens?count=1`;
	const container = document.getElementById('latest-listen');
	try {
		const response = await fetch(url);
		const data = await response.json();
		if (data.payload && data.payload.listens && data.payload.listens.length > 0) {
			const listen = data.payload.listens[0];
			const track = listen.track_metadata.track_name;
			const artist = listen.track_metadata.artist_name;
			const listenedAt = new Date(listen.listened_at * 1000); // Convert timestamp
			const dateFormatted = listenedAt.toLocaleString();
			container.innerHTML = `
	  <b>Last listened track:</b></br>
	  <i>${track}</i> by <i>${artist}</i>. <br>${dateFormatted}
	`;
		} else {
			container.innerHTML = `<p>No recent listens found.</p>`;
		}
	} catch (error) {
		console.error("Error fetching listen:", error);
		container.innerHTML = `<p>Failed to load latest listen.</p>`;
	}
}
getLatestListen("your_user");

```

## Avatar in main page!

Yesterday I decided to add my pixeart avatar to my landing page, this was actually done in a pretty peculiar way that not many of you may know!

If you download the photo, you'll notice it's actually 64x64 pixels. If you copy and paste it anywhere, it will probably look super small, and as soon as you scale it up, it will get aliased and look bad.

I don't remember where I discovered how to make small resolution pixel art render correctly, but the first time I did it was for the badges at the [bottom of my website](#cool-badges), so I just applied the same CSS to this.

This is neat because it lets me use a much smaller file, taking up less resources than a high res scaled up version of the same thing!

Simply add the following CSS and you should be good:

```css
img {
    image-rendering: -moz-crisp-edges;
    image-rendering: -o-crisp-edges;
    image-rendering: -webkit-optimize-contrast;
    -ms-interpolation-mode: nearest-neighbor;
    image-rendering: crisp-edges;
}
```

## New webring!

I added myself to [Polyring](https://polyring.club), a webring started by [Dušan](https://dusanmitrovic.rs/) a long while ago. As of the time of this blog's publication, I'm probably not approved yet, but well, it'll get sorted out, *right?*

Fun thing, adding my avatar to the main page was actually an idea I stole from Dušan's landing page as well, oops.

## External resources vs a single file

Another change I did recently was loading a couple things I used to have hard-coded in the html of my website.

First, **the logo** used to be an embedded vector graphic in my header section, but now I decided to source the svg file instead.

The listenbrainz script used to be in the html too, but now it isn't.

In theory, those things should get cached, making subsequent page loads faster. Especially if you navigate around on my static site a lot, having to download the html with the svg embedded every single time might be eating a couple kilobytes, but now that it's just a file, it *should* be faster.

~~However, I've noticed that it keeps loading everything, almost as if it was getting redownloaded whenever I switch to another section of my website. I can't figure out why, but if you have an idea of what might be causing this behavior (or, if it's not happening for you at all), please let me know!~~

**UPDATE:** 5 minutes later, I discovered I only need to create a `vercel.json` file in my root directory with the following text, which should be changed according to the location of your static files and how long do you want them to stay cached (in seconds):

```json
{
    "headers": [
    {
        "source": "/assets/(.*)",
            "headers": [
            {
                "key": "Cache-Control",
                "value": "public, max-age=2678400, immutable"
            }
            ]
    }
    ]
}
```

Thanks [Amin](https://benjaminhollon.com) for pointing me in the right direction!

## A booklog update

For some reason I hadn't updated my read books in a while. I am already reading *Nemesis Games* and last time my booklog still showed [*The Big Time*](/blog/the-big-time) at 56%! So, that's fixed now.

## Final thoughts

I keep wanting to make a more substantial website redesign, but I keep getting busy with other things, or just distracted, or playing videogames and stuff like that. Oh well, one day inspiration will strike, I'm sure.

For now, I still really like what I got going on, so, maybe don't try to fix what isn't broken?

At least I don't have the itch to switch blogging platforms every two days like [some people out there](https://baty.net). 😉


