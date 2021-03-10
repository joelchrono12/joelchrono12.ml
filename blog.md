---
layout: default
title: Blog | joelchrono12
header: Blog
description: Where the magic happens - this is the blog!
permalink: /blog/
---

{% for post in site.posts %}
  <p> 📅 | {{ post.date | date: "%Y-%m-%d" }} <br> 
  <a href="{{ post.url }}">{{ post.title }}</a> </p>
{% endfor %}
