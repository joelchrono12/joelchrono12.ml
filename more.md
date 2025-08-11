---
title: More
header: More
description: Some other sections of my website as well as other useful links you may like.
permalink: /more/
layout: default
---

<div class="flex-container">
{% for link in site.data.more %}
<article>
  <h3>
  <a href="{{ link.url }}">{{ link.title }}</a>
  </h3>
  <div class="blog-description">{{ link.desc }}</div>
</article>
{% endfor %} 
</div>
