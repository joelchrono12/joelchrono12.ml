---
layout: default
title: Games
header: Games
description: Most of the games I've played, reviews for them and the like
permalink: /games/
---

{% comment %} This is reversed order, if you want to start from the beginning {% assign postsByYear = site.posts | reverse | group_by_exp:"post", "post.date | date: '%Y'" %} <table> <thead> <tr> <th>Model</th> <th>Author</th> <th>Tutorial</th> <th style="text-align: right">Photo</th> </tr> </thead> {% for game in site.games reversed %} <tr> <td><a href="{{ game.url }}">{{ game.title }}</a></td> <td><a href="{{ game.creator.site }}">{{ game.creator.name }}</a></td> {% if game.tutorial %} <td><a href="{{ game.tutorial }}">Yes</a></td> {% else%} <td>No</td> {% endif %} <td style="text-align: right"> {% capture game_pic %} {{ game.image }} {% endcapture %} {% capture game_desc %} {{ game.description }} {% endcapture %} {% include img.html image=game_pic width='210px' alt=game_desc %} </td> </tr> {% endfor %} </table> {% endcomment %}

<style>
.responsive-grid {
  display: flex;
  flex-wrap: wrap;
  gap: 1.5rem;
}

.book-cover-container {
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
  margin-top: 0.5rem;
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
                <div class="dates">Tutorial: <a href="{{ origami.tutorial }}">Yes</a></div>
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

