---
title: Verifying human authorship with human.json
header: Verifying human authorship with human.json
description: Vouching for other people's websites with this brand new protocol that I thought would be fun to implement!
tags: community internet jekyll
permalink: /blog/implementing-human-json/
layout: post
date: 2026-04-03 09:44:11 -0600
host: fosstodon.org
username: joel
com_id: 116342017203363278
---

I've decided to implement the [human.json](https://codeberg.org/robida/human.json) protocol on my website as well.

Basically, this file is a way for websites to vouch for the human authorship of others. It comes with a web extension you can install that will let you know if a site is vouched by another.

I saw a couple of people doing it and decided to jump on the bandwagon, as it is part of what inspired me to write about [human websites before](/blog/unpolished-human-websites/).

Some of the people I saw implementing this protocol were [Axxuy](https://axxuy.com/blog/2026/march-tinkering/), [Naty](https://burgeonlab.com/weeknotes/2026/w12/#link-roundup) and [STFN](https://stfn.pl/blog/94-human-json/), but I think the post that got me to pull the trigger was [Neil's](https://neilzone.co.uk/2026/03/implementing-the-somewhat-whimsical-human-json-protocol-on-my-website/).

Handling json is not very human friendly, it's one of the many funny quirks about this protocol, but alas, it's just a fun thing to do so, whatever.

For now, I simply created a `humans.yml` file inside my Jekyll's `_data` folder, and created a `human.json` file in my root directory with the following Liquid template:

{% raw %}
```json
---
layout: none
permalink: /human.json
---
{
	"version": "0.1.1",
	"url": "{{ site.url }}",
	"vouches": [
		{% for human in site.data.humans %}
		{
			"url": "{{ human.link }}",
			"vouched_at": "{{ human.date }}"
		},
		{% endfor %}
		{
			"url": "https://examplefinalwebsite.com/",
			"vouched_at": "2026-04-03"
		}
	]
}

```
{% endraw %}

The humans.yml file simply looks like this:

```yaml
- link: "https://example.com"
  date: 2026-04-03
- link: "https://example2.com"
  date: 2026-04-03
- link: "https://example3.com"
  date: 2026-04-03
```

and last but not least, adding a `<link>` tag in the HTML `<head>` section:

```html
<link rel="human-json" href="/path/to/human.json">
```

Of course, having a YAML file that gets turned into a JSON file is not the best thing ever, but it's easier to edit and modify on the fly, it only gets generated at build time anyway.

Given what this project entails, I've been a bit conflicted on what websites would make it to my own list. The obvious ones are easy, but those that are real people who used generated content in one shape or another, even if the rest is human-made are harder to decide for me.

Part of me wants to be kind of gatekeepy and leave out websites just because they use an generated profile pic, or thumbnail here or there, or maybe they have written a couple of articles about using an LLM to generate some code, or whatever.

But well, I've decided to just go by feel for those cases that are hard to pinpoint exactly.

Another word can be said about having to do all of this in the first place. That humans are the ones having to prove themselves, instead of websites being clear about using generated content.

In any case, the project seems very fun. It will probably not be a big thing in most websites, but alas, I don't mind doing this and vouching for other people. I'll try to keep it updated over time, and be sure to let me know if you find a site I link that isn't as human anymore.

This is day 45 of [#100DaysToOffload](https://100daystooffload.com).
