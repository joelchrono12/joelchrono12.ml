---
title: Blogroll | Joelchrono12
header: Blogroll
description: A list of blogs and digital gardens I enjoy reading on my free time.
permalink: /blogroll/
layout: default
---

<div class="wrapper" markdown="1">
I follow a lot of websites via RSS, so I decided to do a quick list of the personal blogs and digital gardens I enjoy reading whenever they appear on my feed.

I will try to categorize them further in the future, but for now this will do.

__Last updated: 2023-02-10__
</div>

# My blogroll
<div class="wrapper" markdown="1">

<ul>
{% for item in site.data.blogroll %}
<!--<li><a href="{{ item.url }}">{{ item.name }}</a> - [<a href="{{ item.rss }}">RSS feed</a>]</li>-->
<li><a href="{{item.link}}"><b>{{ item.name }}</b></a> - <a class="post-date" href="{{ item.rss }}">RSS Feed</a></li>
{% endfor %}
</ul>
</div>
# Featured buttons

<div class="wrapper" markdown="1">

These blogs and personal websites have cool buttons, so I added them. Send me your button and I'll add it too!

<div>
{% for item in site.data.blog_badges %}
<a href="{{ item.url }}" target="_blank"><img src="{{ item.src }}" class="badge" alt="{{ item.text }}"></a>
{% endfor %}
</div>

Feel free to add my button to your site using this snippet (do not [hotlink](https://simple.wikipedia.org/wiki/Hotlinking) it though).

<a href="https://joelchrono12.xyz" target="_blank"><img class= "badge" alt="Add my badge to your website! I'll add yours back!" src="/assets/img/badges/joelchrono12.gif" /></a>
```html
<a href="https://joelchrono12.xyz" target="_blank"><img alt="Add my badge to your website! I'll add yours back!" src="/assets/img/badges/joelchrono12.gif" /></a>
```
<a href="https://joelchrono12.xyz" target="_blank"><img src="/assets/img/badges/joelchrono12_2.gif" class="badge" alt="Add my badge to your website! I'll add yours back!" /></a>
```html
<a href="https://joelchrono12.xyz" target="_blank"><img alt="Add my badge to your website! I'll add yours back!" src="/assets/img/badges/joelchrono12_2.gif"/></a>
```
</div>

