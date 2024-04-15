---
title: home | joelchrono
header: Welcome to my website!
description: Ramblings and thoughts about tech, free software, and hobbies of my life, shared bit by bit.
permalink: /
layout: default
---


<article markdown="1">
## Enjoy your stay here!
I am Joel, hi! you are visiting my personal website. Here you can see some of
my thoughts and ramblings about tech, gaming and other hobbies, my favorite of
which is [origami](/origami). I hope you enjoy your visit!

Take your time and explore the many sections you can see in the navigation bar!
You can find other links in the [more](/more) section.
</article>

<article markdown="1">
## Latest blogs
<div class="flex-container">
{% for post in site.posts limit:5 %}
<article>
  <h3><a href="{{ post.url }}"><b>{{ post.title }}</b></a></h3>
  <div>{{ post.description | strip_html | strip_newlines }}</div>
  <small>{{ post.date | date: "%B %d, %Y" }}</small>
</article>
{% endfor %} 
</div>
</article>

<article markdown="1" >
## Support me
You can support me in many ways, either via [PayPal](https://www.paypal.com/donate/?hosted_button_id=NAD2DMRXY22EW), [Liberapay](https://liberapay.com/joelchrono12/donate) or [Ko-fi](https://ko-fi.com/joelchrono)

I don't use crypto personally, but if you want to give me some, there is the option too. My domain provider actually lets me renew it with that! So it doesn't go to waste :P

This site also is [verified with Brave Rewards](https://brave.com/), so it's the easiest way to help me out, even if it doesn't really have any value lol. You can tip me some BAT by enabling the option on your browser.

<details>
<summary>Monero</summary>
I only use <b>Monero</b> since at least its something anonymous and privacy respecting!
<pre>
45Y7FRc1SfrB8YsoJKnoWqTxRaLdFRghaB5EvVaLhs3BMmr3mT5jsooKVVefyF6m4Hg3CyM24q7Ck6TrnbhWmmEMLVJmc1e
</pre>
<div style="display: flex;justify-content: center">
<img alt="45Y7FRc1SfrB8YsoJKnoWqTxRaLdFRghaB5EvVaLhs3BMmr3mT5jsooKVVefyF6m4Hg3CyM24q7Ck6TrnbhWmmEMLVJmc1e" src="./assets/img/test.png"/>
</div>
</details>
</article>
