---
title: Bookshelf
header: Bookshelf
description: I quite like reading science fiction and other things, here's a log of the books I've read divided by year.
redirect_from: /more/booklog/
redirect_from: /reading/
redirect_from: /booklog/
permalink: /bookshelf/
layout: default
---

You can also see this list in my Bookwyrm account at [@joel@bookrastinating.com](https://bookrastinating.com/user/joel). You are welcome to join too!

{% comment %}
<table>
  <thead>
    <tr>
      <th>Title</th>
      <th>Started</th>
      <th>Finished</th>
    </tr>
  </thead>
  <tbody>
{% for item in site.data.books %}
    <tr>
      <td><i>{{ item.title }}</i> by {{ item.author }}</td>
      <td>{{ item.start }}</td>
      {% if item.end == "In progress" %}
      <label for="file">Downloading progress:</label>
      <progress id="file" value="8" max="100">8%</progress>
      {% else %}
      <td>{{ item.end }}</td>
      {% endif %}
    </tr>
{% endfor %}
  </tbody>
</table>
{% endcomment %}

<style>
  .responsive-grid {
    display: flex;
    gap: 1rem;
    flex-wrap: wrap;
    justify-content: start;
    margin-bottom: 1.5rem;
  }

  .book-cover-container {
    background-color: var(--code-bg);
    border: solid 2px var(--code);
    max-width: 50%;
    /*border-radius: 12px;*/
    display: flex;
    flex: 1 1 25%;
    flex-direction: row;
  }

  .book-cover {
    background-size: cover;
    background-position: center;
    /*border-radius: 12px;*/
    overflow: hidden;
    position: relative;
    text-align: center;
    height: 220px;
    min-width: 130px;
  }
  .book-cover-img {
    background-size: cover;
    background-position: center;
    /*border-radius: 12px;*/
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
    padding: 0 .8rem;
    align-items: center;
    text-align: center;
    justify-content: center;
  }

  .title {
    font-weight: bold;
    line-height: 1.2;
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
        flex-direction: row;
        max-width: 100%;
    }

    .book-content {
    flex-grow: 1;
    min-height: 0px;
    align-items: right;
    text-align: right;
    justify-content: right;
    }
    .dates {
    display: inline-block;
    }
  }

progress::-moz-progress-bar { background: var(--border); }
progress::-webkit-progress-value { background: var(--border); }
progress {
    height: 12px;
    width: 100%;
    border: solid 2px var(--border);
    accent-color: var(--border);
    background-color: var(--bg);
    margin-bottom: 0;
}
</style>

{% if site.data.books %}
  {% assign books_by_year = site.data.books | sort: 'end' | group_by_exp: "item", "item.end | date: '%Y'" %}
  {% for year_group in books_by_year reversed %}
  <h3>{{ year_group.name }}</h3>
  <div class="responsive-grid">
  {% for item in year_group.items reversed %}
  <div class="book-cover-container">
  <div class="book-cover">
  <img alt="{{ item.title }}" class="book-cover-img" src="{{ item.cover }}">
  </div>
  <div class="book-content">
      <div class="info">
      <div class="title"><i>{{ item.title }}</i></div>
      <div class="artist">by <b>{{ item.author }}</b></div>
      <div class="dates">Start: {{ item.start }}</div>
      {% if item.progress < 100 %}
      <p class="dates"><label for="file">Progress: {{ item.progress }}%</label><progress id="file" value="{{ item.progress }}" max="100"/></p>
      {% else %}
      <div class="dates">Finish: {{ item.end }}</div>
      {% endif %}
      </div>
      </div>
      </div>
          {% endfor %}
  </div>
  {% endfor %}
{% endif %}

## More books I read at some point

I have not read a ton of books, but up until now, I didn't keep track of dates or anything, so these are books that I read at some point between 2010 and 2021 (or maybe earlier).

- 20,000 Leagues Under the Sea by Jules Verne
- The Mysterious Island by Jules Verne
- Journey to the Center of the Earth by Jules Verne
- From the Earth to the Moon by Jules Verne
- Halo: Contact Harvest by Joseph Staten
- Halo: The Fall of Reach by Eric S. Nylund
- Halo: The Flood by William C. Dietz
- Halo: First Strike by Eric. S. Nylund
- Ready Player One by Ernest Cline
- Star Wars: The Force Unleashed by Sean Williams
- The War of The Worlds by H.G. Wells
- The Invisible Man by H.G. Wells
- The Time Machine by H.G. Wells
- Chronicles of Narnia: The Lion, the Witch and the Wardrobe by C.S. Lewis
- The Pilgrim's Progress by John Bunyan
- The 6 Most Important Decisions You'll Ever Make by Sean Covey
- El Profesor Ziper y la Fabulosa Guitarra Electrica by Juan Villoro
