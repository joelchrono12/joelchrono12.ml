---
layout: default
title: Origami | joelchrono12
header: 🗄️Origami Models
description: This archive contains pics of some origami models, both original of me, or works of other artists. All of the photographed models were folded by me.
permalink: /origami/
---


{% comment %}
This is reversed order, if you want to start from the beginning
{% assign postsByYear = site.posts | reverse | group_by_exp:"post", "post.date | date: '%Y'" %}
{% endcomment %}


<div>

 <table>
  <tr>
    <th>Model</th>
    <th>Author</th>
    <th>Tutorial</th>
    <th style="text-align: right">Photo</th>
  </tr>
{% for origami in site.origami %}
  <tr>
    <td><a href="{{ origami.url }}">{{ origami.title }}</a></td>
    <td><a href="{{ origami.creator.site }}">{{ origami.creator.name }}</a></td>
    {% if origami.tutorial %}
    <td><a href="{{ origami.tutorial }}">Yes</a></td>
    {% else%}
    <td>No</td>
    {% endif %}
    <td style="text-align: right"><img width="210px" src="{{ origami.image }}" alt="{{ origami.description }}" title="{{ origami.description }}"></td>
  </tr>
{% endfor %}
</table> 

</div>

This site page is still work in progress. More models will be added in the future! Thanks for keeping up with me.
