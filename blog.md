---
layout: default
title: Blog | joelchrono12
header: Blog
description: Where the magic happens - this is the blog!
permalink: /blog/
---

Welcome to the blog archive, here you can access every blog I have done, they are ordered by date, so the latest one will be on top. 

{% assign postsByYear = site.posts | group_by_exp:"post", "post.date | date: '%Y'" %}
{% for year in postsByYear %}
  <h1>{{ year.name }}</h1>
{% assign postsByMonth = year.items | group_by_exp:"post", "post.date | date: '%B'" %}
{% for month in postsByMonth %}
<h2>{{ month.name }}</h2>
<ul>
  {% for post in month.items %}
   <li>
   <a href="{{ post.url }}">{{ post.title }}</a><br>
	   📅 {{ post.date | date: "%Y-%m-%d" }} 
	 {% for tag in post.tags %}
    <a class="posttag" href="/tags/{{ tag }}">{{ tag }}</a>  
	 {% endfor %}
	  <br>{{ post.description }}
   </li>
  {% endfor %}
	</ul>
{% endfor %}
{% endfor %}
