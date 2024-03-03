---
layout: default
title: stats | joelchrono
header: Statistics
description: Statistics such as posts count and word count, etc.
permalink: /stats/
---

<article markdown="1">
I copied these stats from [Kev Quirk](https://kevquirk.com/stats/) because why not, he probably got them from somewhere else, viva Open Source!
</article>

# General stats
<article markdown="1">

	{% assign totalWords = 0 %}
	{% assign dateOb = '' %}

	{% for post in site.posts %}
		{% assign postWords = post.content | number_of_words %}
		{% assign totalWords = totalWords | plus:  postWords %}
		{% assign pd = post.date | date: "%Y-%m-%d" %}
	{% endfor %}

	{% assign avgWords = totalWords | divided_by: site.posts.size %}

**Total posts:** {{ site.posts.size }} <br>
**Total words:** {{ totalWords | number_with_delimiter }} (that's approximately {{ totalWords | divided_by: 50000 }} novels)<br>
**Average words per post:** {{ avgWords }} <br>
**Total tags:** {{ site.tags.size }}

</article>

# Posts by year
<article  markdown="1">
<ul class="posts">
  {% assign posts_per_year = site.posts | group_by_exp: "post", "post.date | date: '%Y'" %}
  {% for post in site.posts %}
    {% assign year = post.date | date: "%Y" %}
    {% for current_year in posts_per_year %}
      {% if last_year != year and current_year.name == year %}
        <li class="year">{{ year }} - {{ current_year.size }}</li>
      {% endif %}
    {% endfor %}
    {% assign last_year = year %}
  {% endfor %}
</ul>
</article>

# Tag cloud
<article markdown="1">
<center>
{% for tag in site.tags %}
<a href="/tags/{{ tag[0] }}/" style="padding-right: .4rem;line-height: 1.1;font-size: {{ tag[1] | size | times: 1.3 | plus: 12 }}px;">{{ tag[0] }}</a> 
{% endfor %}
</center>

</article>
