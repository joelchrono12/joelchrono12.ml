---
layout: default
title: blog | joelchrono
header: 🗄️ Blog Archive
description: "This archive contains all of my blogs, ordered and divided by date, you can also access them <a href='/tags/'>by tag</a>."
permalink: /blog/
---


{% assign postsByYear = site.posts | group_by_exp:"post", "post.date | date: '%Y'" %}

<article>
<h2>By year and month</h2>
<div class="flex-container">
{% for year in postsByYear %}
  <details>
    <summary>{{ year.name }} ({{ year.items | size }} posts)</summary>
      {% assign totalYearPostCount = 0 %}
      {% assign postsByMonth = year.items | group_by_exp:"post", "post.date | date: '%B'" %}
      <ul>
      {% for month in postsByMonth %}
      <li><a href="#{{ month.name }} {{ year.name }}"> {{ month.name }} ({{ month.items | size }} {% if month.items.size == 1 %} post{% else %} posts{% endif %}) </a></li>
      {% endfor %}
      </ul>
  </details>
{% endfor %}
</div>
</article>

{% assign postsByYear = site.posts | group_by_exp:"post", "post.date | date: '%Y'" %}
{% comment %}
This is reversed order, if you want to start from the beginning
{% assign postsByYear = site.posts | reverse | group_by_exp:"post", "post.date | date: '%Y'" %}
{% endcomment %}

{% for year in postsByYear %}
<article>
<h2>{{ year.name }}'s posts</h2>
{% assign postsByMonth = year.items | group_by_exp:"post", "post.date | date: '%B'" %}
<ul class="posts">
{% for month in postsByMonth %}
<li><h3 id="{{ month.name }} {{year.name}}">{{ month.name }}</h3></li>
<ul>
{% for post in month.items  %}
<li>
<a class="post" href="{{ post.url }}">
<span class="post-title">{{ post.title }}</span>
<span class="post-date"> {{ post.date | date: "%b %d" }}</span>
</a>
</li>
{% endfor %}
</ul>
{% endfor %}
</ul>
</article>
{% endfor %}
