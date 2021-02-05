---
title: JoelChrono12's website
header: JoelChrono12's website
description: My personal blog, where you can see some of my thoughts and ramblings about tech, gaming and my hobbies
permalink: /
layout: default
---

## Feel free to take a look around!

{% for post in site.posts %}

  <p><a href="{{ post.url }}">{{ post.title }}</a><br>
  {{ post.description }}<br>
  Posted: {{ post.date | date_to_string }}</p>

{% endfor %}

This is a simple webpage that has been handbuilt by joelchrono12, following the guide by [Kev Quirk](https://kevq.uk) using the Jekyll static site generator and [Simple.css](https://simplecss.org).

