---
title: Blogroll | Joelchrono12
header: Blogroll
description: A list of blogs and digital gardens I enjoy reading on my free time.
permalink: /blogroll/
layout: default
---

I follow a lot of websites via RSS, so I decided to do a quick list of the personal blogs and digital gardens I enjoy reading whenever they appear on my feed.

I will try to categorize them further in the future, but for now this will do.

Last updated: 2023-02-07


<ul>
{% for item in site.data.blogroll %}
<!--<li><a href="{{ item.url }}">{{ item.name }}</a> - [<a href="{{ item.rss }}">RSS feed</a>]</li>-->
<li><a href="{{item.link}}"><b>{{ item.name }}</b></a> - <a class="post-date" href="{{ item.rss }}">RSS Feed</a></li>
{% endfor %}
</ul>

