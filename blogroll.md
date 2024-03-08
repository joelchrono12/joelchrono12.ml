---
title: blogroll | joelchrono
header: Blogroll
description: A list of blogs and digital gardens I enjoy reading on my free time.
permalink: /more/blogroll/
redirect_from: /blogroll/
layout: default
---

<article markdown="1">
I follow a lot of websites via RSS, so I decided to do a quick list of the personal blogs and digital gardens I enjoy reading whenever they appear on my feed.

I plan to grow this list in the future, but this is quite a bit already. I'll also check if the websites still post actively, if not, I'll rotate with others I've discovered that are more active!

You can also [download an OPML file](/blogroll.opml) to add all of these to your RSS reader in one fell swoop!

__Last updated: February 12th,2024__ 

</article>

## My blogroll

<style>
  a.button {
  display: flex;
  align-items: center;
  justify-content: space-between;
  }

  .blog-title{
    display: flex;
    align-items: center;
    justify-content: space-between;
  }
  .blog-title h2{
    margin: 0;
  }

  .icon {
	padding-right: .25rem;
	width: 1.2rem;
	stroke-width: 0;
	stroke: var(--bg);
	fill: var(--bg);
}
</style>


{% assign sorted_blogroll = site.data.blogroll | sort: 'name' %}

{% for blogger in sorted_blogroll %}
<article>
<div class="blog-title">
<h2><a href="{{ blogger.link }}">{{ blogger.name }}</a></h2> <a class=button href="{{ blogger.rss }}">
<svg class="icon" viewBox="0 0 22 28">
<path d="M6 21c0 1.656-1.344 3-3 3s-3-1.344-3-3 1.344-3 3-3 3 1.344 3 3zM14 22.922c0.016 0.281-0.078 0.547-0.266 0.75-0.187 0.219-0.453 0.328-0.734 0.328h-2.109c-0.516 0-0.938-0.391-0.984-0.906-0.453-4.766-4.234-8.547-9-9-0.516-0.047-0.906-0.469-0.906-0.984v-2.109c0-0.281 0.109-0.547 0.328-0.734 0.172-0.172 0.422-0.266 0.672-0.266h0.078c3.328 0.266 6.469 1.719 8.828 4.094 2.375 2.359 3.828 5.5 4.094 8.828zM22 22.953c0.016 0.266-0.078 0.531-0.281 0.734-0.187 0.203-0.438 0.313-0.719 0.313h-2.234c-0.531 0-0.969-0.406-1-0.938-0.516-9.078-7.75-16.312-16.828-16.844-0.531-0.031-0.938-0.469-0.938-0.984v-2.234c0-0.281 0.109-0.531 0.313-0.719 0.187-0.187 0.438-0.281 0.688-0.281h0.047c5.469 0.281 10.609 2.578 14.484 6.469 3.891 3.875 6.188 9.016 6.469 14.484z"></path>
</svg> RSS
</a>

</div>
<p class="blog-description">{{ blogger.desc | newline_to_br }}</p>
</article>
{% endfor %}

## Featured buttons

<article markdown="1">

These blogs and personal websites have cool buttons, so I added them. Send me your button and I'll add it too!

<article>
{% for item in site.data.blog_badges %}
<a href="{{ item.url }}" target="_blank"><img src="{{ item.src }}" class="badge" alt="{{ item.text }}"></a>
{% endfor %}
</article>

Feel free to add my button to your site using this snippet (do not [hotlink](https://simple.wikipedia.org/wiki/Hotlinking) it though).

<a href="{{ site.url }}" target="_blank"><img class= "badge" alt="Add my badge to your website! I'll add yours back!" src="/assets/img/badges/joelchrono12.gif" /></a>
```html
<a href="{{ site.url }}" target="_blank"><img alt="Add my badge to your website! I'll add yours back!" src="/assets/img/badges/joelchrono12.gif" /></a>
```
<a href="{{ site.url }}" target="_blank"><img src="/assets/img/badges/joelchrono12_2.gif" class="badge" alt="Add my badge to your website! I'll add yours back!" /></a>
```html
<a href="{{ site.url }}" target="_blank"><img alt="Add my badge to your website! I'll add yours back!" src="/assets/img/badges/joelchrono12_2.gif"/></a>
```
</article>

