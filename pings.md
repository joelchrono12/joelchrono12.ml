---
layout: default
title: Blog pings
header: Blog pings
description: "Every blogpost that has linked or referenced one of my blogposts shows up here."
permalink: /pings/
---

This list is maintained by hand, please [contact me](/contact/) if you have linked to one of my articles so I can add you here. If you want me to remove you, do the same.

<ul style="padding: 0;">
{% for post in site.posts %}
{% if post.mentions %}
<li style="list-style: none; border: solid 2px var(--code); padding: 1rem; margin-bottom: 1rem; background: var(--code-bg);">
<div class="post">
<span class="p-name post-title"><a class="u-url" href="{{ post.url }}"><b>{{ post.title }}</b></a></span>
<span class="post-date"><time class="dt-published" datetime="{{ post.date }}"> {{ post.date | date: "%b %d, %Y" }}</time></span>
</div>
<ul>
{% for mention in post.mentions %}
<li style="font-size: medium; list-style: disc;"><a href="{{ mention.url }}"> {{ mention.title }}</a> by {{ mention.author }}</li>
{% endfor%}
</ul>
</li>
{% endif %}
{% endfor %}
</ul>
