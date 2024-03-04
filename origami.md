---
layout: default
title: origami | joelchrono
header: 🗄️Origami Models
description: This archive contains pics of some origami models, both original of me, or works of other artists. All of the photographed models were folded by me.
permalink: /more/origami/
redirect_from: /origami/
---

{% comment %}
This is reversed order, if you want to start from the beginning
{% assign postsByYear = site.posts | reverse | group_by_exp:"post", "post.date | date: '%Y'" %}
{% endcomment %}

 <table>
 <thead>
  <tr>
    <th>Model</th>
    <th>Author</th>
    <th>Tutorial</th>
    <th style="text-align: right">Photo</th>
  </tr>
 </thead>
{% for origami in site.origami reversed %}
  <tr>
    <td><a href="{{ origami.url }}">{{ origami.title }}</a></td>
    <td><a href="{{ origami.creator.site }}">{{ origami.creator.name }}</a></td>
    {% if origami.tutorial %}
    <td><a href="{{ origami.tutorial }}">Yes</a></td>
    {% else%}
    <td>No</td>
    {% endif %}
    <td style="text-align: right">
    {% capture origami_pic %} {{ origami.image }} {% endcapture %}
    {% capture origami_desc %} {{ origami.description }} {% endcapture %}
    {% include img.html image=origami_pic width='210px' alt=origami_desc %}
    </td>
  </tr>
{% endfor %}
</table> 

This site page is still work in progress. More models will be added in the future! Thanks for keeping up with me.
