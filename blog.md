---
layout: default
title: Blog | joelchrono12
header: Blog
description: Where the magic happens - this is the blog!
permalink: /blog/
---
<ul>
{% for post in site.posts %}
<li><a href="{{ post.url }}">{{ post.title }}</a> -  📅  {{ post.date | date: "%Y-%m-%d" }} </li>
{% endfor %}
</ul>
