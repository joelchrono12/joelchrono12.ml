---
title: Share this post to Mastodon
header: Share this post to Mastodon
description: I added a share button for the people who read my stuff and share them! As well as some other small changes to my site
tags: jekyll tutorial webdev short
permalink: /blog/share-this-post-to-mastodon/
layout: post
date: 2026-03-04 20:22:22 -0600
host: fosstodon.org
username: joel
com_id: 116180028894382635
---

The people at Mastodon recently released a [share button for websites!](https://blog.joinmastodon.org/2026/03/a-new-share-button/) and I think it works rather well, as it remembers the instance you selected for the next time you use it somewhere else.

I added the following button to the bottom of my articles! I made use of Jekyll's [Liquid syntax](https://jekyllrb.com/docs/liquid/).

{% raw %}
```html
<a class="button" href="https://share.joinmastodon.org/#text=Check%20this%20blogpost%20by%20%40joel%40fosstodon.org! https://joelchrono.xyz{{ page.url | uri_scape }}" target="_blank" rel="noopener">Share on Mastodon</a>
```
{% endraw %}

You can find this line in use on my `_includes/comments.html` file---available on my [git repo](https://github.com/joelchrono12/website/blob/main/_includes/comments.html), where I also have my [Mastodon-based comments section](https://joelchrono.xyz/blog/how-to-add-mastodon-comments-to-jekyll-blog/), just in case you are also interested on getting those set up on your static website!

Thought I'd make a shorter post for once. Could it just be part of [my weeknotes?](/tags/weeknotes/) maybe, but I write whatever I want on my website. I actually realized this thanks to a [short update post](http://82mhz.net/posts/2026/03/website-update-links-page/), not too different to this one, on Andreas' website. Cool stuff!

Anyway, I should go back to playing CrossCode before the day is over, I have a bunny to catch.

This is day 28 of [#100DaysToOffload](https://100daystooffload.com)
