---
title: Home | joelchrono12
header: Welcome to my digital garden
description: Hello! I am Joel, you are visiting my personal website. Here you can see some of my thoughts and ramblings about tech, gaming and other hobbies, my favorite of which is <a href='/origami/'>origami</a>. I hope you enjoy your visit!
permalink: /
layout: default
---

***
# Latest blogs 


<ul>
{% for post in site.posts limit:5 %}
<li>{{ post.date | date:"%Y-%m-%d"}}
<a href="{{ post.url }}"> {{ post.title }}</a>
<!--<small>{{ post.description }}</small>-->
<!--<small style="display: block">[ {% for tag in post.tags %}-->
<!--<a href="/tags/{{ tag }}">{{ tag }}</a>-->
<!--{% endfor %} ]</small>-->
</li>
{% endfor %} 
</ul>
<p style="text-align: right" ><a href="/blog">View full archive</a></p>
<hr>




# My games and projects

I have worked in some games made in Godot as entries for different game jams, I've also done translations or documentation in a few projects. I also designed icons for apps and icons packs. Here is some of my work!
* [FreshRSS Nord's Theme](https://github.com/joelchrono12/freshrss-nord-theme)  
    A simple, basic theme you can work on top of to have the Nord color scheme in your FreshRSS instance. WIP.
* [Arcticons Icon Pack](https://github.com/Donnnno/Arcticons)  
    A monotone line-based icon pack for Android where I contribute by designing icons with a focus on Free and Open Source Software.
* [Deep Into the Volcano](https://joelchrono12.itch.io/deep-into-the-volcano)  
    My entry for Ludum Dare 48, a simple game with two levels where you try to escape the Lava coming towards you!
* [Swap Die Repeat](https://joelchrono12.itch.io/swap-die-repeat)  
    For my first game jam! A 2D puzzle platformer made with Godot, swap characters until you die! (but try not to).
* [Cliff Hanger](https://joelchrono12.itch.io/cliff-hanger)  
    Yet another 2D platformer, but you have to complete the levels in 12 seconds or less, how? By stopping time!, how? by hanging on... cliffs?
* [Only Spaceship](https://joelchrono12.itch.io/only)  
    A rushed out game that is kinda wonky and broken. A spaceshooter where you survive as long as its not unfair.

***

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
<p>
{% for tag in site.tags %}
<a href="/tags/{{ tag[0] }}/" style="font-size: {{ tag[1] | size | times: 1.1 | plus: 12 }}px;">{{ tag[0] }}</a>  
{% endfor %} 
</p>
</center>
