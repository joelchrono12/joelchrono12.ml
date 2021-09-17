---
title: Home | joelchrono12
header: Welcome to my website
description: Hello! I am Joel, you are visiting my personal blog. Here you can see some of my thoughts and ramblings about tech, gaming and my hobbies. I hope you enjoy your visit!
permalink: /
layout: default
---

# Latest blogs

{% for post in site.posts limit:3 %}
<p><strong><a href="{{ post.url }}"> {{ post.title }}</a></strong><br>
{{ post.description }}<br>
<small>
📅  {{ post.date | date:"%Y-%m-%d"}}
 🏷️
{% for tag in post.tags %}
 <a href="/tags/{{ tag }}">{{ tag }}</a> |
{% endfor %}
</small>

<br></p>
{% endfor %} 




# My games and projects

{% include projects.html %}

# Support me

This site is [verified with Brave Rewards](https://brave.com/)**, so if you like my work or you feel like helping me out, you can tip me some BAT by enabling the option on your browser

You can also [tip me with Monero](https://getmonero.org)** if you want something anonymous and privacy respecting!

```
45Y7FRc1SfrB8YsoJKnoWqTxRaLdFRghaB5EvVaLhs3BMmr3mT5jsooKVVefyF6m4Hg3CyM24q7Ck6TrnbhWmmEMLVJmc1e
```
![Monero QR Code](./assets/img/monero)

# Tags

<div style="width: 80%; margin: 0 auto;">
{% for tag in site.tags %}
    <a href="/tags/{{ tag[0] }}/" style="font-size: {{ tag[1] | size | times: 1.5 | plus: 11 }}px">{{ tag[0] }}</a>  
{% endfor %} 
</div>
<br>

***

This is a simple webpage that has been handbuilt by [joelchrono12](/contact), following the guide on [Kev Quirk's website](https://kevq.uk) using the [Jekyll static site generator](https://jekyllrb.com) . Thanks for visiting!

