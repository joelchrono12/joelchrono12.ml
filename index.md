---
title: Home | joelchrono12
header: Welcome to my website
description: Hello! I am Joel, you are visiting my personal blog. Here you can see some of my thoughts and ramblings about tech, gaming and my hobbies. I hope you enjoy your visit!
permalink: /
layout: default
---

# Latest blogs 


{% for post in site.posts limit:5 %}
<h3><a href="{{ post.url }}"> {{ post.title }}</a></h3>
<p>{{ post.description }}</p>
<p> <small>[ {{ post.date | date:"%Y-%m-%d"}}
{% for tag in post.tags %}
| <a href="/tags/{{ tag }}">{{ tag }}</a> 
{% endfor %} ]
</small></p>
{% endfor %} 

## [View full archive](/blog)

# My games and projects

{% include projects.html %}

# Support me

You can support me in many ways, either via Paypal or Liberapay, as well as other options like cryptocurrencies.

This site also is [verified with Brave Rewards](https://brave.com/), so it's the easiest way to help me out, you can tip me some BAT by enabling the option on your browser.

<br>
<center>
<a class="button" href="https://joelchrono12.netlify.app/paypal">Paypal</a> <a class="button" href="https://liberapay.com/joelchrono12/donate">LiberaPay</a>
</center>
<br>


<p>
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
</p>


<h1>My Tags Cloud</h1>
<center>
<p>
{% for tag in site.tags %}
<a href="/tags/{{ tag[0] }}/" style="font-size: {{ tag[1] | size | times: 1.1 | plus: 12 }}px;">{{ tag[0] }}</a>  
{% endfor %} 
</p>
</center>
