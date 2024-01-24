---
title: booklog | joelchrono
header: Booklog
description: I quite like reading science fiction and other things, here's a log of the books I've read divided by year.
permalink: /booklog/
layout: default
redirect_from: /reading/
---

You can also see this list in my Bookwyrm account at [@joel@bookrastinating.com](https://bookrastinating.com/user/joel). You are welcome to join too!

# 👤 Books I read

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
      <td>{{ item.end }}</td>
    </tr>
{% endfor %}
  </tbody>
</table>
{% endcomment %}

<style>
  .responsive-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(160px, 1fr));
    gap: 1rem;
  }

  .book-cover-container {
    background-color: var(--code-bg);
    padding: .6rem;
    padding-top: 1rem;
    border-radius: 12px;
    display: flex;
    flex-direction: column;
  }

  .book-cover {
    background-size: cover;
    background-position: center;
    border-radius: 10px;
    overflow: hidden;
    position: relative;
    text-align: center;
    height: 230px;
  }

  .content {
    display: flex;
    flex-grow: 1;
    padding: 0 .8rem;
    transition: opacity 0.3s ease;
    overflow: auto;
    align-items: center;
    text-align: center;
    justify-content: center;
  }

  .info {
    font-size: 14px;
  }

  .title {
    font-weight: bold;
    font-size: 16px;
    margin-bottom: 5px;
  }

  .artist {
    font-size: 14px;
  }

  .dates {
    font-size: 12px;
    white-space: pre-line;
    overflow: visible;
  }

  @media screen and (max-width: 600px) {
    .responsive-grid {
      grid-template-columns: 1fr;
    }

    .book-cover-container {
    flex-direction: row;
    padding: .6rem;
    }

    .book-cover {
      height: 170px;
      flex: 0 0 100px;  
      margin-right: 10px;
    }

    .content {
    flex-grow: 1;
    min-height: 0px;
    align-items: right;
    text-align: right;
    justify-content: right;
    }
    .dates {
    display: inline;
    }
  }
</style>

{% if site.data.books %}
  {% assign books_by_year = site.data.books | sort: 'end' | group_by_exp: "item", "item.end | date: '%Y'" %}
  {% for year_group in books_by_year reversed %}
  <h2>{{ year_group.name }}</h2>
  <div class="responsive-grid">
  {% for item in year_group.items reversed %}
  <div class="book-cover-container">
  <div class="book-cover">
  <img class="book-cover" src="{{ item.cover }}">
  </div>
  <div class="content">
  <div class="info">
  <div class="title"><i>{{ item.title }}</i></div>
  <div class="artist">by {{ item.author }}</div>
  <div class="dates">Started: {{ item.start }}</div>
  <div class="dates">Finished: {{ item.end }}</div>
  </div>
  </div>
  </div>
      {% endfor %}
  </div>
  {% endfor %}
{% endif %}







## Books I read at some point

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
