---
title: blogroll | joelchrono
header: Blogroll
description: A list of blogs and digital gardens I enjoy reading on my free time.
permalink: /more/blogroll/
redirect_from: /blogroll/
layout: default
---

<article markdown="1">
I follow a lot of websites via RSS, so I decided to do a quick list of the personal blogs and digital gardens I enjoy reading whenever they appear on my feed.

I plan to grow this list in the future, but this is quite a bit already. I'll also check if the websites still post actively, if not, I'll rotate with others I've discovered that are more active!

You can also [download an OPML file](/blogroll.opml) to add all of these to your RSS reader in one fell swoop!

__Last updated: February 12th,2024__ 

</article>

## My blogroll

{% assign sorted_blogroll = site.data.blogroll | sort: 'name' %}

<div class="flex-container">
{% for blogger in sorted_blogroll %}
<article>
<h3 class="post" style="padding:0; margin:0;">
<a class="post-title" href="{{ blogger.link }}">{{ blogger.name }}</a>
<a class="post-date" href="{{ blogger.rss }}">RSS</a>
</h3> 
<div class="blog-description">{{ blogger.desc | newline_to_br }}</div>
</article>
{% endfor %}
</div>

## Featured buttons

<article markdown="1">

These blogs and personal websites have cool buttons, so I added them. Send me your button and I'll add it too!

<article>
{% for item in site.data.blog_badges %}
<a href="{{ item.url }}" target="_blank"><img src="{{ item.src }}" class="badge" alt="{{ item.text }}"></a>
{% endfor %}
</article>

Feel free to add my button to your site using this snippet (do not [hotlink](https://simple.wikipedia.org/wiki/Hotlinking) it though).

<a href="{{ site.url }}" target="_blank"><img class= "badge" alt="Add my badge to your website! I'll add yours back!" src="/assets/img/badges/joelchrono.png" /></a>
```html
<a href="{{ site.url }}" target="_blank"><img alt="Add my badge to your website! I'll add yours back!" src="/assets/img/badges/joelchrono12.gif" /></a>
```
<a href="{{ site.url }}" target="_blank"><img src="/assets/img/badges/joelchrono12_2.gif" class="badge" alt="Add my badge to your website! I'll add yours back!" /></a>
```html
<a href="{{ site.url }}" target="_blank"><img alt="Add my badge to your website! I'll add yours back!" src="/assets/img/badges/joelchrono12_2.gif"/></a>
```
</article>

