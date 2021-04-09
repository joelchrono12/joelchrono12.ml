---
title: Home | joelchrono12
header: Joelchrono12's space
description: My personal blog, where you can see some of my thoughts and ramblings about tech, gaming and my hobbies
permalink: /
layout: default
---

Welcome to my corner of the internet, I hope you like this place, I am still working on it to make it as nice as possible :)

# Latest blogs

{% for post in site.posts limit:3 %}
  <div class="game-box"><a href="{{ post.url }}" >{{ post.title }}</a>
  <br><em>{{ post.description }}</em><br>
  📅  {{ post.date | date:"%Y-%m-%d"}}<br>
  </div>
{% endfor %}

# My games and projects

{% include projects.html %}

# Gemini capsule

You can also access a mirror of this site on your gemini client if you so wish, there might be a bit of delay, but eventually you will get it :D

<a href="gemini://gemlog.blue/users/joelchrono12/1612572527.gmi" class="button">Visit gemini capsule</a>


---

This is a simple webpage that has been handbuilt by [joelchrono12](/contact), following the guide by [Kev Quirk](https://kevq.uk) using the Jekyll static site generator and [Simple.css](https://simplecss.org).
