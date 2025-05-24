---
title: home | joelchrono
header: Welcome to my website!
description: Ramblings and thoughts about tech, free software, and hobbies of my life, shared bit by bit.
permalink: /
layout: default
---


<article markdown="1">
## Enjoy your stay here!

Hey! I'm **Joel**.

You are visiting my personal website. Here you can see some of my **thoughts** and **ramblings** about **tech**, **gaming** and **other hobbies**, my favorite of which is [origami](/origami). I hope you enjoy your visit!

Take your time and explore as much as you want, there's [plenty of sections](/more/) to dive into!
</article>

<!-- Place this where you want the latest song info to show -->
<div id="latest-listen">
  <p>Loading latest listen...</p>
</div>

<script>
  async function getLatestListen(username) {
    const url = `https://api.listenbrainz.org/1/user/${username}/listens?count=1`;
    const container = document.getElementById('latest-listen');

    try {
      const response = await fetch(url);
      const data = await response.json();
      
      console.log(data); // Log the raw JSON to check its structure

      if (data.payload && data.payload.listens && data.payload.listens.length > 0) {
        const listen = data.payload.listens[0];
        const track = listen.track_metadata.track_name;
        const artist = listen.track_metadata.artist_name;
        const albumArt = listen.track_metadata.album_art_url;
        const listenedAt = new Date(listen.listened_at * 1000); // Convert timestamp
        const dateFormatted = listenedAt.toLocaleString();

        // Build the content in the format similar to your bash script
        container.innerHTML = `
          <div><b>Last listened track:</b></br>
          <i>${track}</i> by <i>${artist}</i>. <br>${dateFormatted}</div>
        `;
        if (albumArt) {
        container.innerHTML += `<p><strong>Album Art:</strong></p>
        <img src="${albumArt}" alt="Album Art" style="width: 100px; height: 100px; border-radius: 8px; border: 2px solid #ddd;">
        `
        }
        else{

        }
      } else {
        container.innerHTML = `<p>No recent listens found.</p>`;
      }
    } catch (error) {
      console.error("Error fetching listen:", error);
      container.innerHTML = `<p>Failed to load latest listen.</p>`;
    }
  }

  // Replace this with your actual ListenBrainz username
  getLatestListen("joel76");
</script>



<article markdown="1">
## Latest blogs
<div class="flex-container">
{% for post in site.posts limit:5 %}
<article>
  <h3 class="post">
  <a href="{{ post.url }}">{{ post.title }}</a>
{% if post.tags contains "book" %}
<a href="/more/tags/book">📖</a>
{% endif %}
{% if post.tags contains "response" %}
<a href="/more/tags/response">💬</a>
{% endif %}
{% if post.tags contains "game" %}
<a href="/more/tags/game">🕹</a>
{% endif %}
  </h3>
  <div class="blog-description">{{ post.description | strip_html | strip_newlines }}</div>
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
