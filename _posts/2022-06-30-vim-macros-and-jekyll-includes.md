---
title: Vim macros and Jekyll includes
header: Vim macros and Jekyll includes
description: I've not talked about Vim in a while, but today it was quite handy while setting up WebP fallbacks to support old browsers using Jekyll's includes feature
tags: webdev coding vim jekyll fediverse blog
permalink: /blog/vim-macros-and-jekyll-includes/
layout: post
date: 2022-06-30 10:53:30 -0500
host: benign.town
username: joel
com_id: 108567468892960945
---

Yesterday I talked about converting all my images to WebP, because it would help keep the file sizes smaller, improving loading times. However I have to say I agree with [@isa](https://thenighthas.me/@isa) when she mentioned how annoying it is to not have a jpg or png file available to download since webp is still not as supported by Image viewers and the like, or if you dislike file formats that stick out from the standard.

So I decided to keep both webp and jpg files available. I am not sure of what makes a browser choose one over the other. For now, I pretty much copy pasted the solution used by [Simone on his blog](https://minutestomidnight.co.uk/blog/implementing-webp-images-in-jekyll/), I only added some code to support `.gif` files, since WebP supports animation too.

Implementing this was not difficult at all. I created a file inside of my `_includes` folder containing the following template:

{% raw %}
```html
<figure class="{{ include.class | default: 'img' }}">
  <picture>
    <source srcset="{{ include.image | replace:'.png','.webp' | replace:'.jpg','.webp' | replace:'.jpeg','.webp' | replace: '.gif','.webp' }}" type="image/webp">
    <source srcset="{{ include.image }}" {% if include.image contains '.jpg' or include.image contains '.jpeg' %}type="image/jpeg"{% elsif include.image contains '.png' %}type="image/png" {%elsif include.image contains '.gif'%}type="image/gif"{% endif %}>
    <img class="mx-auto" src="{{ include.image }}" alt="{{ include.alt | default: include.caption }}" {{ include.width ? include.width | prepend: 'width="' | append: '"' }} {{ include.height ? include.height | prepend: 'height="' | append: '"' }}>
  </picture>
  {% if include.caption %}<figcaption class="caption">{{ include.caption }}</figcaption>{% endif -%}
</figure>
```
{% endraw %}

Now all I have to do when using an image in a blogpost is provide both a webp and a jpg/png/gif file with the same filename, and use the following template:

{% raw %}
```liquid
{% include img.html image="/path/to/assets/image.jpg" width="512px" alt="Alternate text" caption="A caption" %}
```
{% endraw %}

I was already using Jekyll's includes for a lot of things, such as the comments system, the articles of blogs I follow and other things. Its a really powerful tool that I quite like. However, editing each existing file could take me a long time. I actually did a [poll on mastodon](https://benign.town/@joel/108564145793713657) to see what people would do. As of the writing of this post, most people say they would handle this by hand. And, to be honest, that's kinda what I did, but I had some tricks up my sleve.

# Vim macros to the rescue

Using macros with Vim is simply fantastic, I took a while to mention them, for some reason, all I had to do was implement 2 macros for the different kinds of markup I've used. Be it plain markdown (`![title](source)`) or plain html (`<figure><img></img><figcaption></figcaption></figure>`). There were a couple of edge cases, like when I included links inside of the captions and such.

There are many examples and videos that talk about doign Vim macros, so I will just share some videos of how they worked out.

For Markdown, I pretty much look for `![` and then used Vim keybindings to go word for word `w`, to the end of the line `$` and such, rinse and repeat.

{% include img.html image="/assets/img/blogs/2022-06-30_macros.gif" caption="Macro used for Markdown syntax." %}

The steps to make a macro for HTML were a bit more complicated, but doable nonetheless. 

{% include img.html image="/assets/img/blogs/2022-06-30_macros2.gif" caption="Macro used for HTML syntax." %}

My macro had some problems, since I was doing `dt"` to *delete* the contents of something un*til* a *quote* showed up, along other similar things, adding a link to a `figcaption` broke my macro in a couple cases. But other than that, it worked alright. I also had to run my macro from a certain position relative to the HTML, or else other things would not work properly.

I guess doing macros is pretty much its own artform, I've seen some uses for them that blew me away. If you have not used them for anything before, you might want to give them a try next time you script something!

# Finishing thoughts

If I am honest, I still don't know how I feel about it making use of includes in this way, since making the changes here was kinda annoying. But, thinking about it, it only took me like half an hour to do. I don't know, maybe simply using something like `xclip` or `xdotool` to quickly access the plain HTML template would be a lot better to keep my markdown platform agnostic. I will think about it, but for now Jekyll is still my platform of choice.
{% include reply.html %}
