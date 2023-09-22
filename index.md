---
title: Home | joelchrono12
header: Welcome to my digital garden
description: Ramblings and thoughts about tech, free software, and hobbies of my life, shared bit by bit.
permalink: /
layout: default
---

<!--<div markdown="1" class="blog-data">-->
<div class="wrapper">
  <p>
  I am Joel, hi! you are visiting my personal website. Here you can see some of my thoughts and ramblings about tech, gaming and other hobbies, my favorite of which is <a href="/origami"> origami</a>. 
  I hope you enjoy your visit!
  </p>
</div>
  <!--<div class=wrapper style="min-width: 40%; margin: 1rem; padding: 1rem;" >-->
    <!--<img style="opacity: 1;" src="/assets/img/chill_chrono_trigger.gif">-->
  <!--</div>-->
<!--</div>-->



<div class="blog-data" style="padding-bottom: .5rem;align-items: first baseline;">
<h1>Latest blogs</h1>
<a class=button href="/blog">Full archive</a>
</div>

<!--<div markdown="1" class="wrapper">-->

{% for post in site.posts limit:3 %}
<article class="posts wrapper">
  <p class="blog-data"><a href="{{ post.url }}"><b>{{ post.title }}</b></a></p>
  <div>{{ post.excerpt | strip_html | strip_newlines | truncatewords: 28 }}</div>
  <small>{{ post.date | date: "%B %d, %Y" }}</small>
</article>
{% endfor %} 
<!--</div>-->

# Support me
<div markdown="1" class="wrapper">

You can support me in many ways, either via 

<a class="button" href="https://www.paypal.com/donate/?hosted_button_id=NAD2DMRXY22EW">Paypal</a>
<a class="button" href="https://liberapay.com/joelchrono12/donate">Liberapay</a>
<a class="button" href="https://ko-fi.com/joelchrono12">Ko-Fi</a>

I don't use crypto personally, but if you want to give me some, there is the option too. My domain provider actually lets me renew it with that! So it doesn't go to waste :P

This site also is [verified with Brave Rewards](https://brave.com/), so it's the easiest way to help me out, even if it doesn't really have any value lol. You can tip me some BAT by enabling the option on your browser.

<details>
<summary>Monero</summary>
I only use <b>Monero</b> since at least its something anonymous and privacy respecting!
<pre>
45Y7FRc1SfrB8YsoJKnoWqTxRaLdFRghaB5EvVaLhs3BMmr3mT5jsooKVVefyF6m4Hg3CyM24q7Ck6TrnbhWmmEMLVJmc1e
</pre>
<center><img src="./assets/img/monero"/></center>
</details>
</div>
