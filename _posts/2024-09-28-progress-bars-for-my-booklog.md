---
title: Progress bars for my Booklog!
header: Progress bars for my Booklog!
description: Just a small change that I wanted to make to my booklog section on my website to keep track of my reading progress!
tags: jekyll webdev tutorial design
permalink: /blog/progress-bars-for-my-booklog/
redirect_from: /blog/progress-bars-for-my-booklog-/
layout: post
date: 2024-09-28 21:56:08 -0600
updated: 2024-09-29 09:00:00 -0600
host: fosstodon.org
username: joel
com_id: 113218921176017218
---

For some reason, I didn't know how to make progress bars in HTML!

Turns out it's very simple, just use the `<progress>` element! Pretty well documented on the [MDN web docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/progress) to be honest.

Simply by using something like the following: 

```html
<label for="progress">Progress:</label>
<progress id="progress" max="100" value="70">70%</progress>
```

We get something like this!

<label for="progress">Progress:</label>
<progress id="progress" max="100" value="70">70%</progress>

So, in order to add that [to my booklog](/booklog), I simply had to add a `progress` variable to the YAML file I use on `_data/books.yml` like so:

```yaml
- title: "Leviathan Wakes"
  author: "James S.A. Corey"
  cover: "/assets/img/books/leviathan-wakes.jpg"
  start: "2024-09-19"
  end: "In progress"
  progress: 16
```

And of course, style the bar, which was a bit of a pain at least for the filled portion of it.

```css
progress::-moz-progress-bar { background: var(--border); }
progress::-webkit-progress-value { background: var(--border); }
progress {
    color: var(--border);
    height: 12px;
    width: 80%;
    border: 0px;
    background-color: var(--bg);
    border-radius: 8px;
}
```

And in the end, we end up with something like this!

<style>
progress.css::-moz-progress-bar { background: var(--border); }
progress.css::-webkit-progress-value { background: var(--border); }
progress.css {
    color: var(--border);
    height: 12px;
    width: 80%;
    border: solid 2px var(--border);
    background-color: var(--accent-bg);
}
</style>
<label class=css for="book-progress">Book Progress:</label>
<progress class=css id="book-progress" max="100" value="70">70%</progress>

Here's the complete liquid syntax for my booklog section! The complete file including the CSS styling can be found [on my GitHub repo](https://github.com/joelchrono12/joelchrono12.ml/blob/main/booklog.md).

{% raw %}
```html
{% if site.data.books %}
  {% assign books_by_year = site.data.books | sort: 'end' | group_by_exp: "item", "item.end | date: '%Y'" %}
  {% for year_group in books_by_year reversed %}
  <h3>{{ year_group.name }}</h3>
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
      {% if item.progress < 100 %}
      <div class="dates">
      <label for="file">Progress: {{ item.progress }}%</label>
      <progress id="file" value="{{ item.progress }}" max="100">{{ item.progress }}%</progress>
      </div>
      {% else %}
      <div class="dates">Finished: {{ item.end }}</div>
      {% endif %}
      </div>
      </div>
      </div>
          {% endfor %}
  </div>
  {% endfor %}
{% endif %}
```
{% endraw %}

Once again, you can see the whole thing in action on [my booklog](/booklog). Now I just have to remember to update it often! 

This is day 76 of [#100DaysToOffload](https://100daystooffload.com)
