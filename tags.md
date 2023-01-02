---
title: Tags | joelchrono12
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

## Tag cloud
<center>
{% for tag in site.tags %}
<a href="/tags/{{ tag[0] }}/" style="padding-right: .4rem;line-height: 1.1;font-size: {{ tag[1] | size | times: 1.3 | plus: 12 }}px;">{{ tag[0] }}</a> 
{% endfor %}
</center>

## By alphabetical order

<div class="posts">
{% assign sorted_tags = site.tags | sort %}
{% for tag in sorted_tags %}
{% assign t = tag | first %}
{% assign posts = tag | last %}
<a class="post" href="/tags/{{ tag[0] }}/">
<h3 class="post-title">{{ tag[0]}}</h3>
<span class="post-date">{{ tag[1] | size }} posts</span>
</a>
{% endfor %}
</div>

## By post quantity

<div class="posts">
{% capture tags %}
{% for tag in site.tags %}
{{ tag[1].size | plus: 1000 }}#{{ tag[0] }}#{{ tag[1].size }}
{% endfor %}
{% endcapture %}
{% assign sortedtags = tags | split:' ' | sort %}
{% for tag in sortedtags reversed %}
{% assign tagitems = tag | split: '#' %}
<a class="post" href="/tags/{{ tagitems[1] }}/"><h3 class="post-title">{{ tagitems[1]}}</h3> <span class="post-date">{{ tagitems[2] }} posts</span></a> 
{% endfor %}
</div>
