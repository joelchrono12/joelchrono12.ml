---
title: Website redesign in progress
header: Website redesign in progress
description: You may be able to appreciate that I am redesigning my website. My era of suckless and minimalist is over, and I will now embrace the bloat.
tags: blog webdev jekyll
permalink: /blog/website-redesign-in-progress/
layout: post
date: 2023-02-10 22:24:08 -0600
host: fosstodon.org
username: joel
com_id: 109846493956959761
image: "/assets/img/blogs/2023-02-09-redesign1.webp"
---


Alright, so, again, inspired by many of the websites I saw during my tour of the indie web and the like. I revamped my website quite a bit, changing some things, making it more fun and personal for me.

> UPDATE: 
> For the sake of accessibility, I added a button that uses javascript to disable the animation. Other metods to do so without it are mentioned below

I spent so much time doing so many changes and fixes, that I am honestly too tired to do a proper explanation of everything I did. I was also so lazy that I worked on a single commit all the time just amending the changes I was doing on it. Don't worry, I also did a good branch to test all the changes being done. I kind of want to figure out how to merge certain commits to a different branch and such, to, for example, move this article to a different branch but not move all the CSS and layout changes I've done.

Regardless, here are some of the changes I did in a simple list to call it a day and go mindlessly watch YouTube videos:

# Background change

My background is now the Time Gate animation from Chrono Trigger. I googled a bit and found a very awesome HD version of it, which you can admire here:

<div style='position:relative; padding-bottom:calc(56.25% + 44px)'><iframe src='https://gfycat.com/ifr/AnimatedSecretHectorsdolphin' frameborder='0' scrolling='no' width='100%' height='100%' style='position:absolute;top:0;left:0;' allowfullscreen></iframe></div>

This animation comes from what's effectively a loading screen from __Chrono Trigger__, my absolute favorite game of all time, the only one I've completed more than once and will probably be played again this year, its kind of an unwritten law.

Anyways, that video, converted to a GIF or WEBP animation, would still weight a ton. Therefore I decided to compress it quite a bit. Thankfully, I managed to go below the 512KB required by my club. So there's that. I am probably going to lose my Green Team badge though. I found a different GIF that is actually quite smaller, to less than 90KB, but didn't like it as much.

I also did a button using this animation, a lot simpler, without my logo, but kind of sick if I do say so myself.

<a href="https://joelchrono12.xyz" target="_blank"><img class="badge" alt="Add my badge to your website! I'll add yours back!" src="/assets/img/badges/joelchrono12_2.gif"/></a>

Thanks to a [suggestion by Benjamin Hollon](https://fosstodon.org/@benjaminhollon/109844074473887614) you will be able to disable the animated background using the `@media (prefers-reduced-motion)` CSS media feature.



# Rest of changes

As you can tell, I redesign the blog layout quite a bit, now almost everything is going to be inside its own solid colored container, to not make it all unreadable due to the animated background. It took a bit of time to add some divs to some of my Jekyll layouts. But after it was over, it was over for good.

- Latest blogs will now show an excerpt of the content of the blogpost. its a bit more text, and I think it looks quite nice.
- The [contact](/contact) section is now divided in Instant Messaging and Social Networks, and I added a few more accounts of mine in there.
- I added a couple more programs to my [uses](/uses/) page.
- I redesigned the top section of posts, with the published date, word count, reading time and tags. It's more responsive and compact, its also adapted to smaller screens such as phones.
- In the footer, I placed the buttons a bit higher, removed links that didn't make much sense or were replaced by a buttons.
- The layout of the section for articles from blogs I follow now includes an excerpt from the article in question.

There probably are some other small changes I forgot, but I think my site looks quite nice now. I may do even more changes in the future but I wanted to keep a similar layout and color scheme, because I still really like Tokyo-Night and how it looks. I feel like the background combines quite well with it, so I am happy with how it all turned out. I append a few images for you to compare the old layout with the new!


{% include img.html image="/assets/img/blogs/2023-02-09-redesign1.webp" caption="Blog post example, old and new" %}
{% include img.html image="/assets/img/blogs/2023-02-09-redesign2.webp" caption="Blog Archive page, old and new" %}
{% include img.html image="/assets/img/blogs/2023-02-09-redesign3.webp" caption="Footer, old and new" %}

This is day 37 of [#100DaysToOffload](https://100daystooffload.com)
{% include reply.html %}
