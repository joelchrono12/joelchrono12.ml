---
title: Simple Jekyll - A Jekyll site powered by Simple.css
header: Simple Jekyll {}
description: A Jekyll site powered by Simple.css
permalink: /
layout: default
---

# Welcome to joelchrono's blog

{% for post in site.posts %}

  <p><a href="{{ post.url }}">{{ post.title }}</a><br>
  {{ post.description }}<br>
  Posted: {{ post.date | date_to_string }}</p>

{% endfor %}

This is a simple webpage that has been handbuilt by joelchrono12, following the guide by [Kev Quirk](https://kevq.uk) using the Jekyll static site generator and [Simple.css](https://simplecss.org).

