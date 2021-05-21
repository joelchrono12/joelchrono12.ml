---
title: Tags | joelchrono12
header: Tags
description: These are the current available tags, as well as the RSS feed of each of them, in case you want to follow certain topics , I still have to make this look pretty, but it works.
permalink: /tags/
layout: default
---




<ul>
{% for tag in site.tags %}
<li><a href="/tags/{{ tag[0] }}/">{{ tag[0] }} </a> [{{ tag[1] | size }}] <a href="/feeds/{{ tag[0] }}.xml/"> RSS</a></li>
{% endfor %}
</ul>

