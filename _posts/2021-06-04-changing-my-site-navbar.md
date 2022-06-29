---
title: How to highlight the current section of a Jekyll website 
header: How to highlight the current section of a Jekyll website 
description: I have always enjoyed messing around with my website, today its not different, I decided to fix some stuff and add a nice detail to my navigation bar
tags: webdev foss blog tutorial jekyll
permalink: /blog/changing-my-site-navbar/ 
layout: post 
date: "2021-06-04 19:19:41 -0500" 
host: fosstodon.org 
username: joeligj12 
com_id: 106355405714811048
--- 

This is a quick blog and tutorial showing how to do a little simple thing to
make my navigations bar a little better looking.

I had felt a bit bored of my current websites design, it was fun to mess around
with svg's and I still have some in the "Get in touch" section at the bottom of
my website.

So I wanted to get rid of that, but I also wanted something that I noticed in a
few sites, where the section you are visiting is being highlighted in a
different way, compared to rest of sections. 

However, for some reason, most tutorials using jekyll had some really extensive
code that I was unable to figure out. So I decided to try stuff out and came up
with my own solution.

Despite the solutions online didn't work right away, I still got some
inspiration from them, so I will leave a footnote to them if you wanna check
them out. [^1] [^2]

So this is my current navigation bar, I decided to add my recent profile
picture, and the navbar is closer to the title, you can also see that my
sections are all the same color.

![My navbar before the changes](/assets/img/blogs/2021-06-04-nav-before.webp)

In Jekyll, if you followed Kev's tutorial about how to make a blog, you might
already have the file `~/_data/navigation.yml`, with a structure similar to
this:

```
- name: Blog
  link: /blog/
- name: About
  link: /about/
- name: Contact
  link: /contact/
- name: Uses
  link: /uses/
- name: Tags
  link: /tags/
```

If that is the case, you only have to change your file in
`~/_include/navigation.html` To have the following contents:
{% raw %}
```
<nav>
    {% for item in site.data.navigation %}
        {% if item.link == page.url %}
        <a class="nav-current" href="{{ item.link }}">{{ item.name }}</a>
        {% elsif page.url != item.link %}
        <a href="{{ item.link }}">{{ item.name }}</a>
        {% endif %}
    {% endfor %}
</nav>
```
{% endraw %}

The key of all of this is the class `nav-current`, which can be used to
customize the CSS of your element in any way you prefer. In my case, the webiste
ended up looking like this:

![My navbar before the changes](/assets/img/blogs/2021-06-04-nav-after.webp)

I decided to simplify the design, get rid of the svg separators and change the
color of the site's title, as well as the obvious changes to the nav items.

Not every webiste will have the same styling as mine, so I don't think sharing
exactly how to configure each CSS property is necessary, but at least you now
know how to separate your current section from the rest usilng Jekyll.

It is worth noting that if you are looking for a minimal website with minimal
CSS, you could just add the `style` attribute to the code included in
`navigation.html` which would make it so you dont need to configure a separate
CSS file.

This is day 42 of [#100DaystoOffload](https://100DaystoOffload.com)



[^1]: [Stack Overflow](https://stackoverflow.com/questions/8340170/jekyll-automatically-highlight-current-tab-in-menu-bar) had some really intereting solution using Jekyll's `assign` and other things, maybe its for an older version or something like that.
[^2]: It also has a more [general solution](https://stackoverflow.com/questions/4626431/highlight-the-navigation-menu-for-the-current-page)  but I did not bother to try it out.
