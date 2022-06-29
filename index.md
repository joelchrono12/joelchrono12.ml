---
title: Home | joelchrono12
header: Welcome to my digital garden
description: Hello! I am Joel, you are visiting my personal website. Here you can see some of my thoughts and ramblings about tech, gaming and other hobbies, my favorite of which is <a href='/origami/'>origami</a>. I hope you enjoy your visit!
permalink: /
layout: default
---

# Latest blogs 


<div class="posts">
{% for post in site.posts limit:5 %}
<a class="post" href="{{ post.url }}"><h3 class="post-title">{{ post.title }}</h3><span class="post-date">{{ post.date | date: "%b %d" }}</span></a>
{% endfor %} 
</div>
<p style="text-align: right" ><a href="/blog">View full archive</a></p>
<hr>

# Support me

You can support me in many ways, either via [Paypal](/paypal) or [Liberapay](https://liberapay.com/joelchrono12/donate), as well as other options like cryptocurrencies.

This site also is [verified with Brave Rewards](https://brave.com/), so it's the easiest way to help me out, you can tip me some BAT by enabling the option on your browser.

<details>
<summary>Monero</summary>
You can also <b>tip me with Monero</b> if you want something anonymous and privacy respecting!
<pre>
45Y7FRc1SfrB8YsoJKnoWqTxRaLdFRghaB5EvVaLhs3BMmr3mT5jsooKVVefyF6m4Hg3CyM24q7Ck6TrnbhWmmEMLVJmc1e
</pre>
<center><img src="./assets/img/monero"/></center>
</details>
<details>
<summary>Bitcoin</summary>
If you want to, I guess Bitcoin is fine too:
<pre>
bc1qhgpzq9x3lvnzm5nszqwr8a38mhcnu5y9vg3uhf
</pre>
</details>
***

# Tag cloud
<center>
{% for tag in site.tags %}
<a href="/tags/{{ tag[0] }}/" style="padding-right: .4rem;line-height: 1.2;font-size: {{ tag[1] | size | times: 1.4 | plus: 12 }}px;">{{ tag[0] }}</a> 
{% endfor %}
</center>
