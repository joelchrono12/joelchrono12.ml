---
layout: default
title: Blog | joelchrono12
header: 🗄️ Blog Archive
description: "This archive contains all of my blogs, ordered and divided by date, you can also access them <a href='/tags/'>by tag</a>."
permalink: /blog/
---

{% assign postsByYear = site.posts | group_by_exp:"post", "post.date | date: '%Y'" %}

{% comment %}
This is reversed order, if you want to start from the beginning
{% assign postsByYear = site.posts | reverse | group_by_exp:"post", "post.date | date: '%Y'" %}
{% endcomment %}

{% for year in postsByYear %}
<h1>{{ year.name }}'s posts</h1>
{% assign postsByMonth = year.items | group_by_exp:"post", "post.date | date: '%B'" %}

{% for month in postsByMonth %}
<h2>{{ month.name }}</h2>
<div class="wrapper posts">
  {% for post in month.items  %}
   <a class="post" href="{{ post.url }}"><h3 class="post-title">{{ post.title }}</h3><span class="post-date">{{ post.date | date: "%b %d" }}</span></a>
  {% endfor %}
</div>
{% endfor %}
{% endfor %}
