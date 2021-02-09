---
title: Home | joelchrono12
header: Joelchrono12's space
description: My personal blog, where you can see some of my thoughts and ramblings about tech, gaming and my hobbies
permalink: /
layout: default
---

Welcome to my corner of the internet, I hope you like this place, I am still working on it to make it as nice as possible :)

# Latest blogs

{% for post in site.posts limit:2 %}
  <p><a href="{{ post.url }}">{{ post.title }}</a><br>

  {{ post.description }} <br>
  📅 - {{ post.date | date_to_string }}
  </p>
{% endfor %}


<a href="/blog" class="button">Full blog list</a>

# Gemini capsule

You can also access a mirror of this site on your gemini client if you so wish, there might be a bit of delay, but eventually you will get it :D


<a href="gemini://gemlog.blue/users/joelchrono12/1612572527.gmi" class="button">Visit gemini capsule</a>


---


This is a simple webpage that has been handbuilt joelchrono12, following the guide by [Kev Quirk](https://kevq.uk) using the Jekyll static site generator and [Simple.css](https://simplecss.org).




