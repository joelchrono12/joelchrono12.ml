---
title: Home | joelchrono12
header: Welcome to my website
description: Hello! I am Joel, you are visiting my personal blog. Here you can see some of my thoughts and ramblings about tech, gaming and my hobbies. I hope you enjoy your visit!
permalink: /
layout: default
---

# Latest blogs

{% for post in site.posts limit:3 %}
<h3><a href="{{ post.url }}"> {{ post.title }}</a></h3>
<p>{{ post.description }}</p>
<p> <small>| {{ post.date | date:"%Y-%m-%d"}}
{% for tag in post.tags %}
<a href="/tags/{{ tag }}">{{ tag }}</a> |
{% endfor %}
</small></p>
{% endfor %} 

# My games and projects

{% include projects.html %}

# Support me

You can support me in many ways, either via Paypal or Liberapay, as well as other options. 

<br>
<a class="button" href="https://joelchrono12.netlify.app/paypal">Paypal</a> <a class="button" href="https://liberapay.com/joelchrono12/donate">LiberaPay</a>
<br>
<br>

This site also is [verified with Brave Rewards](https://brave.com/), so it's the easiest way to help me out, you can tip me some BAT by enabling the option on your browser.

You can also [tip me with Monero](https://getmonero.org) if you want something anonymous and privacy respecting!


```
45Y7FRc1SfrB8YsoJKnoWqTxRaLdFRghaB5EvVaLhs3BMmr3mT5jsooKVVefyF6m4Hg3CyM24q7Ck6TrnbhWmmEMLVJmc1e
```
![Monero QR Code](./assets/img/monero)

If you want to, I guess Bitcoin is fine too:

```
bc1qhgpzq9x3lvnzm5nszqwr8a38mhcnu5y9vg3uhf
```

<section class="box">
<h1>Tags</h1>
<center>
{% for tag in site.tags %}
<a href="/tags/{{ tag[0] }}/" style="font-size: {{ tag[1] | size | times: 1.3 | plus: 15 }}px;">{{ tag[0] }}</a>  
{% endfor %} 
</center>
</section>
