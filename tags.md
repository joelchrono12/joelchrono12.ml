---
title: tags | joelchrono
header: Tags
description: These are the current available tags, as well as the RSS feed of each of them, in case you want to follow certain topics, they are sorted too!
permalink: /tags/
layout: default
---

<!--<ul>-->
<!--{% for tag in site.tags %}-->
<!--<li><a href="/tags/{{ tag[0] }}/">{{ tag[0] }} </a> [{{ tag[1] | size }}] <a href="/feeds/{{ tag[0] }}.xml/"> Feed</a></li>-->
<!--{% endfor %}-->
<!--</ul>-->

* Do not remove this line (it will not be displayed)
{:toc}

## By alphabetical order

<article>
<ul class="posts">
{% assign sorted_tags = site.tags | sort %}
{% for tag in sorted_tags %}
{% assign t = tag | first %}
{% assign posts = tag | last %}
<li><a class="post" href="/tags/{{ tag[0] }}/">
<b class="post-title">{{ tag[0]}}</b>
<span class="post-date">{{ tag[1] | size }} posts</span>
</a></li>
{% endfor %}
</ul>
</article>

## By post quantity

<article>
<ul class="posts">
{% capture tags %}
{% for tag in site.tags %}
{{ tag[1].size | plus: 1000 }}#{{ tag[0] }}#{{ tag[1].size }}
{% endfor %}
{% endcapture %}
{% assign sortedtags = tags | split:' ' | sort %}
{% for tag in sortedtags reversed %}
{% assign tagitems = tag | split: '#' %}
<li><a class="post" href="/tags/{{ tagitems[1] }}/"><b class="post-title">{{ tagitems[1]}}</b> <span class="post-date">{{ tagitems[2] }} posts</span></a></li>
{% endfor %}
</ul>
</article>
