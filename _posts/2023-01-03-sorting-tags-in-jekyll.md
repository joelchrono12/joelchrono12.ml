---
title: Sorting tags in Jekyll
header: Sorting tags in Jekyll
description: Jekyll allows you to make tags, which are quite useful. I've been working on reducing the amount of tags and changing the way I display them in my blog. So here's what's up
tags: jekyll tutorial blog coding
permalink: /blog/sorting-tags-in-jekyll/
layout: post
date: 2023-01-03 17:31:39 -0500
host: fosstodon.org
username: joel
com_id: 109628565442603434
---

So tags are quite a useful feature to loosely categorize posts in my blog. I've been using them for quite a while, but I never really liked the way they were shown in my website.

I had been showcasing a *tag cloud* in my home page for quite a while, I don't know how many actually used it at all (let me know if you did please, I wanna know), but I decided to move it to my [tags](/tags) section, which has been there for a while. However, I also decided to try and sort them in a better way.

So far, I think jekyll sorted my tags in whatever order they were created. This was clearly __not__ ideal for me.

I took my time to look around online and see other ways to do this from different blogs such as [this one](https://mindthecode.com/blog/sorting-tags-in-jekyll/), (while writing this blog I came across [another similar post](https://lei1025.github.io/Implement-Sorting-Tags-by-Name-and-Value-in-Jekyll/)). I found them kinda hard to understand so wrote this anyways. I think the code I found is kinda good but please, let me know if it can be improved!

Here's how I can sort them alphabetically as well as based on the amount of posts each has.

# Sorting by name


The following snippet will sort all tags by name and will also show the amount of posts they contain.
{% raw %}
```liquid
<ul>
{% assign sorted_tags = site.tags | sort %}
{% for tag in sorted_tags %}
{% assign t = tag | first %}
{% assign posts = tag | last %}
<li><a href="/tags/{{ tag[0] }}/">{{ tag[0]}}</a> has {{ tag[1] | size }} posts</li>
{% endfor %}
</ul>
```
{% endraw %}

# Sorting by post quantity

This one was a little trickier, but still quite simple to do.

{% raw %}
```liquid
<ul>
{% capture tags %}
{% for tag in site.tags %}
{{ tag[1].size | plus: 1000 }}#{{ tag[0] }}#{{ tag[1].size }}
{% endfor %}
{% endcapture %}
{% assign sortedtags = tags | split:' ' | sort %}
{% for tag in sortedtags reversed %}
{% assign tagitems = tag | split: '#' %}
<li><a href="/tags/{{ tagitems[1] }}/">{{ tagitems[1]}}</a> has {{ tagitems[2] }} posts</li>
{% endfor %}
</ul>
```
{% endraw %}

# Finishing up

So, that's it. Did you expect me to explain it? This is not original material, I understand the first one maybe but I do not know what the `plus: 1000` does on the second snippet nor anything in that line. Regardless, it works just fine for me to be honest and perhaps it could work for you.

I still find Jekyll to be quite enjoyable, it seems to me like most blogs nowadays are either Hugo or plain old WordPress. Maybe its just my own bias and its nothing like that.

Besides, **[Void Linux itself](https://github.com/void-linux/void-linux.github.io/), the one above all**, uses Jekyll. Therefore, I will do my duty and stay loyal to it... until I get bored, or something.

Also, this is gonna be day 3 of my second run of [#100DaysToOffload](https://100daystooffload.com), *always has been*.
