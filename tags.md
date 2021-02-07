---
title: Tags | joelchrono12
header: Tags
description: This is a list of all of my tags, by clicking them you can access every posts that has that tag
permalink: /tags/
layout: default
---
# Current tags

You can also get its special feed, if you want to add it to your RSS feed, I still have to make this look pretty, but it works.


{% for tag in site.tags %}
  <!-- Here's a hack to generate a "tag cloud" where the size of
  the word is directly proportional to the number of posts with
  that tag. -->
  <a href="/tags/{{ tag[0] }}/">{{ tag[0] }}</a>  - <a href="/feeds/{{ tag[0] }}.xml/">[feed]</a>
{% endfor %}
