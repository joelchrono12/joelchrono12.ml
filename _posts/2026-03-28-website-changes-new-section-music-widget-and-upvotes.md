---
title: "Website changes: new section, music widget, and upvotes"
header: "Website changes: new section, music widget, and upvotes"
description: I made a couple of additions to my Jekyll site and decided to share them all here!
tags: jekyll webdev
permalink: /blog/website-changes-new-section-music-widget-and-upvotes/
layout: post
date: 2026-03-28 08:29:42 -0600
host: fosstodon.org
username: joel
com_id: 116308437745790988
mentions:
- author: Axxuy
  title: March Tinkering
  url: https://axxuy.com/blog/2026/march-tinkering/
---

## "On This Week" section

I wanted to add an "On This Day" kind of thing to my website for a while, but even though I have made almost 600 posts as of the time of writing, I still have plenty of empty days where I've not made a post.

A In any case, the solution was simple, do it by week and call it done. I found [a post](https://www.joshbeckman.org/blog/implementing-on-this-day-feature-jekyll) by [Josh Beckman](https://mastodon.social/@joshbeckman) detailing how to do this by day. Using a similar logic, I made use of `%V` to get the week number and `%G` to get the year for that week---when a calendar week happens across different years.

You can find it live on my [home page](/#this-week-in-other-years), and here's a simplified version of it with just the basics:

{% raw %}
```liquid
{% assign current_week = site.time | date: "%V" %}
{% assign current_week_year = site.time | date: "%G" %}

<ul>
{% for post in site.posts %}
    {% assign post_week = post.date | date: "%V" %}
    {% assign post_week_year = post.date | date: "%G" %}
    {% if post_week == current_week and post_week_year != current_week_year %}
        <li>{{ post.date | date: "%Y-%m-%d" }} 
            <a href="{{ post.url }}">{{ post.title }}</a>
        </li>
    {% endif %}
{% endfor %}
</ul>
```
{% endraw %}

{% assign current_week = site.time | date: "%V" %}
{% assign current_week_year = site.time | date: "%G" %}

This is a live example of how the output looks like:

<ul>
{% for post in site.posts %}
    {% assign post_week = post.date | date: "%V" %}
    {% assign post_week_year = post.date | date: "%G" %}
    {% if post_week == current_week and post_week_year != current_week_year %}
        <li>{{ post.date | date: "%Y-%m-%d" }}  
            <a href="{{ post.url }}">{{ post.title }}</a>
        </li>
    {% endif %}
{% endfor %}
</ul>

## Improved music widget 

Yesterday I was playing around with the ListenBrainz API---which I use to display my last song I listened to---and realized that there was a way to get the song *currently playing* instead. [I implemented my original script a while back](/blog/small-website-updates/), but I got to work and modified it to get my currently listening song, and fallback to the latest one when nothing's playing on my ears.

```js
// fetch json file based on given url
async function fetchListen(url) {
	try {
		const response = await fetch(url);
		const data = await response.json();
		return data.payload.listens[0] || null;
	}
	catch (err){
		console.error("Unable to fetch", err);
		return null;
	}
}

function printHtml(container, content){
	container.innerHTML = content;
}

async function getListen(username) {
    // get html id to override later
	const container = document.getElementById('latest-listen');
	const currentUrl = `https://api.listenbrainz.org/1/user/${username}/playing-now`;
	const latestUrl = `https://api.listenbrainz.org/1/user/${username}/listens?count=1`;
	const current = await fetchListen(currentUrl);

	if (current) {
		const track = current.track_metadata.track_name;
		const artist = current.track_metadata.artist_name;
		return printHtml(container, `<b>Currently listening:</b></br>🎵 <i>${track}</i> by <i>${artist}</i>.`);
	}
	const latest = await fetchListen(latestUrl);
	if (latest) {
		const track = latest.track_metadata.track_name;
		const artist = latest.track_metadata.artist_name;
		const listenedAt = new Date(latest.listened_at * 1000); // Convert timestamp
		const dateFormatted = listenedAt.toLocaleString();
		return printHtml(container, `<b>Last listened track:</b></br>🎶 <i>${track}</i> by <i>${artist}</i>. <br>${dateFormatted}`);
	}
	printHtml(container, `<b>No music found</b>`);
}

getListen('joel76');

```

## An upvote button

Naty shared [how to have upvotes on a blog](https://burgeonlab.com/blog/add-appreciation-buttons-to-hugo-with-iine/) and I basically copy-pasted the entire thing. You only need to follow [the setup instructions](https://iine.to/#setup) and it will literally just work.

You can find the upvote button in the [comments sections](#comments) of every blogpost! Feel free to click or tap on it.

The one downside is that it's a third party service, but it's so simple I can't really come up with a reason why not to try it out. If it ever breaks or stops being supported, it won't really be that big of a deal.

---

Anyway, those were a lot of changes done to my site for one week, I feel kinda cool about that. Feel free to borrow any of these ideas and make it your own.

This website has evolved and changed so much over time, I can feel the itch to start over creeping up, making it minimal while keeping as much of the features I got on it. Maybe a simple CSS overhaul will do the trick though...

This is day 42 of [#100DaysToOffload](https://100daystooffload.com).
