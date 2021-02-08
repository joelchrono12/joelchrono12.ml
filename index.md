---
title: Home | joelchrono12
header: Joelchrono12's space
description: My personal blog, where you can see some of my thoughts and ramblings about tech, gaming and my hobbies
permalink: /
layout: default
---

Welcome to my corner of the internet, I hope you like this place, I am still workinng on it to make it as nice as possible :)

# Latest blogs

{% for post in site.posts limit:2 %}
  <p><a href="{{ post.url }}">{{ post.title }}</a><br>
  {{ post.description }}<br>
   📅 - {{ post.date | date_to_string }}</p>
{% endfor %}


<a href="/blog" class="button">Full blog list</a>

---
# Credits

This is a simple webpage that has been handbuilt by joelchrono12, following the guide by [Kev Quirk](https://kevq.uk) using the Jekyll static site generator and [Simple.css](https://simplecss.org).

