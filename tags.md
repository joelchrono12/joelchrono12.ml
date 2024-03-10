---
title: tags | joelchrono
header: Tags
description: These are the current available tags, as well as the RSS feed of each of them, in case you want to follow certain topics, they are sorted too!
permalink: /more/tags/
redirect_from: /tags/
layout: default
---

<!--<ul>-->
<!--{% for tag in site.tags %}-->
<!--<li><a href="/tags/{{ tag[0] }}/">{{ tag[0] }} </a> [{{ tag[1] | size }}] <a href="/feeds/{{ tag[0] }}.xml/"> Feed</a></li>-->
<!--{% endfor %}-->
<!--</ul>-->

<ul>
<li><a href="#by-alphabetical-order">By alphabetical order</a></li>
<li><a href="#by-post-quantity">By post quantity</a></li>
</ul>

<article>
<h2 id="by-alphabetical-order">By alphabetical order</h2>
<ul class="posts">
{% assign sorted_tags = site.tags | sort %}
{% for tag in sorted_tags %}
{% assign t = tag | first %}
{% assign posts = tag | last %}
<li><a class="post" href="/more/tags/{{ tag[0] }}/">
<span class="post-title">{{ tag[0]}}</span>
<span class="post-date">{{ tag[1] | size }} posts</span>
</a></li>
{% endfor %}
</ul>
</article>

<article>
<h2 id="by-post-quantity"> By post quantity</h2>
<ul class="posts">
{% capture tags %}
{% for tag in site.tags %}
{{ tag[1].size | plus: 1000 }}#{{ tag[0] }}#{{ tag[1].size }}
{% endfor %}
{% endcapture %}
{% assign sortedtags = tags | split:' ' | sort %}
{% for tag in sortedtags reversed %}
{% assign tagitems = tag | split: '#' %}
<li><a class="post" href="/more/tags/{{ tagitems[1] }}/"><span class="post-title">{{ tagitems[1]}}</span> <span class="post-date">{{ tagitems[2] }} posts</span></a></li>
{% endfor %}
</ul>
</article>
