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
.responsive-grid {
    display: flex;
    gap: 1rem;
    flex-wrap: wrap;
    justify-content: start;
    margin-bottom: 1.5rem;
}
.book-cover {
    background-size: cover;
    background-position: center; /*border-radius: 12px;*/
    overflow: hidden;
    position: relative;
    text-align: center;
    min-width: 130px;
}
.book-cover-img {
    background-size: cover;
    background-position: center; /*border-radius: 12px;*/
    overflow: hidden;
    position: relative;
    text-align: center;
    height: 220px;
    width: 110px;
    min-width: 130px;
}
.book-content {
    display: flex;
    flex-grow: 1;
    padding: 0 0.8rem;
    text-align: center;
    justify-content: center;
}
.title {
    font-weight: bold;
}
.artist {
    font-size: small;
}
.dates {
    font-size: small;
    white-space: pre-line;
    margin: 0;
    overflow: visible;
}
.info {
    line-height: 1.5;
}
@media screen and (max-width: 600px) {
    .book-cover-container {
        width: 100vw;
    }
    .book-content {
        flex-grow: 1;
        min-height: 0;
    }
}
</style>


<style>
.responsive-grid {
  display: flex;
  flex-wrap: wrap;
}

.book-cover-container {
    background-color: var(--code-bg);
    border: solid 2px var(--code);
    max-width: 50%; /*border-radius: 12px;*/
    display: flex;
    flex: 1 1 20%;
    width: 210px;
    display: flex;
    flex-direction: column;
}

.book-cover-img {
  width: 100%;
  height: auto;
  aspect-ratio: 4/3;
  border-radius: 5px;
}

.book-content {
  margin: 0.5rem;
  line-height: 1.5;
}

</style>

{% if site.origami %}
{% assign origami_by_year = site.origami | sort: 'date' | group_by_exp: "item", "item.date | date: '%Y'" %}
{% for year_group in origami_by_year reversed %}
<h3>{{ year_group.name }}</h3>
<div class="responsive-grid">
{% for origami in year_group.items reversed %}
<div class="book-cover-container">
<div class="book-cover">
<img alt="{{ origami.description }}" class="book-cover-img" src="{{ origami.image }}">
</div>
<div class="book-content">
<div class="info">
<div class="title"><i><a href="{{ origami.url }}">{{ origami.title }}</a></i></div>
<div class="artist">by <b><a href="{{ origami.creator.site }}">{{ origami.creator.name }}</a></b></div>
{% if origami.tutorial %}
<div class="dates"><a href="{{ origami.tutorial }}">Tutorial: Yes</a></div>
{% else %}
<div class="dates">Tutorial: No</div>
{% endif %}
</div>
</div>
</div>
{% endfor %}
</div>
{% endfor %}
{% endif %}


This site page is still work in progress. More models will be added in the future! Thanks for keeping up with me.
