---
layout: default
title: Origami
header: Origami
description: This archive contains pics of some origami models, both original of me, or works of other artists. All of the photographed models were folded by me.
redirect_from: /more/origami/
permalink: /origami/
---

{% comment %} This is reversed order, if you want to start from the beginning {% assign postsByYear = site.posts | reverse | group_by_exp:"post", "post.date | date: '%Y'" %} <table> <thead> <tr> <th>Model</th> <th>Author</th> <th>Tutorial</th> <th style="text-align: right">Photo</th> </tr> </thead> {% for origami in site.origami reversed %} <tr> <td><a href="{{ origami.url }}">{{ origami.title }}</a></td> <td><a href="{{ origami.creator.site }}">{{ origami.creator.name }}</a></td> {% if origami.tutorial %} <td><a href="{{ origami.tutorial }}">Yes</a></td> {% else%} <td>No</td> {% endif %} <td style="text-align: right"> {% capture origami_pic %} {{ origami.image }} {% endcapture %} {% capture origami_desc %} {{ origami.description }} {% endcapture %} {% include img.html image=origami_pic width='210px' alt=origami_desc %} </td> </tr> {% endfor %} </table> {% endcomment %}

<style > 
.book-cover {
    background-size: cover;
    background-position: center; /*border-radius: 12px;*/
    overflow: hidden;
    position: relative;
    text-align: center;
}
.book-cover-img {
    object-fit: cover;
  width: 100%;
  aspect-ratio: 4/3;
}
.book-content{
    justify-content: center;
    line-height: 1.5rem;
    margin: 0 !important;
    padding-bottom: .5rem;
    text-align: center;
}

.title, .artist, .dates, .book-cover{
flex: auto !important;
margin: 0 !important;
}
.title {
    font-weight: bold;
}
.artist, .dates{
    font-size: small;
    overflow: visible;
}
@media screen and (max-width: 600px) {
    .flex-container article{
        min-width: 40%;
    }
}
.flex-container article{
    padding: 0;
}
</style>

{% if site.origami %}
{% assign origami_by_year = site.origami | sort: 'date' | group_by_exp: "item", "item.date | date: '%Y'" %}
{% for year_group in origami_by_year reversed %}
<h3>{{ year_group.name }}</h3>
<div class="flex-container">
{% for origami in year_group.items reversed %}
<article>
<div class="book-cover">
<img alt="{{ origami.description }}" class="book-cover-img" src="{{ origami.image }}">
</div>
<div class="book-content">
    <div class="title"><i><a href="{{ origami.url }}">{{ origami.title }}</a></i></div>
    <div class="artist">by <b><a href="{{ origami.creator.site }}">{{ origami.creator.name }}</a></b></div>
{% if origami.tutorial %}
    <div class="dates"><a href="{{ origami.tutorial }}">Tutorial</a></div>
{% else %}
    <div class="dates">No tutorial</div>
{% endif %}
</div>
</article>
{% endfor %}
</div>
{% endfor %}
{% endif %}


This site page is still work in progress. More models will be added in the future! Thanks for keeping up with me.
