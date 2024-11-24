---
layout: default
title: blog | joelchrono
header: Blog Archive
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
      <li><a href="#{{ month.name }}-{{ year.name }}"> {{ month.name }} ({{ month.items | size }} {% if month.items.size == 1 %} post{% else %} posts{% endif %}) </a></li>
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
    <li>
    <h3 id="{{ month.name }}-{{year.name}}">{{ month.name }}</h3>
        <ul>
        {% for post in month.items  %}
        <li class="post">
        <span class="post-title"><a href="{{ post.url }}">{{ post.title }}</a></span>
        <span class="post-tags">
        {% if post.tags contains "book" %}
        <a href="/more/tags/book">📖</a>
        {% endif %}
        {% if post.tags contains "response" %}
        <a href="/more/tags/response">💬</a>
        {% endif %}
        </span>
        <span class="post-date"> {{ post.date | date: "%b %d" | downcase }}</span>
        </li>
        {% endfor %}
        </ul>
    </li>
    {% endfor %}
</ul>
</article>
{% endfor %}

{% comment %}
{% for year in postsByYear %}
{% assign postsByMonth = year.items | group_by_exp:"post", "post.date | date: '%B'" %}
{% for month in postsByMonth %}
{% for post in month.items  %}
<!--<p>{{ post.date | date: '%Y-%m-%d' }}</p>-->
{% endfor %}
{% endfor %}
{% endfor %}
{% endcomment %}
