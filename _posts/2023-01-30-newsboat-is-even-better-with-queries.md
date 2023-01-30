---
title: Newsboat queries and FreshRSS web scraping
header: Newsboat queries and FreshRSS scraping
description: I have talked about RSS a lot, my favorite client on my desktop is Newsboat, and queries are a feature I did not know existed until now, and I can not believe how I lived without them. Likewise, FreshRSS got a great feature a while ago, that allows me to scrape websites using XPath, and its awesome!
tags: linux foss rss
permalink: /blog/newsboat-queries-and-freshrss-scraping/
layout: post
date: 2023-01-30 15:50:00 -0600
host: fosstodon.org
username: joel
com_id: 109780417895227334
image: "/assets/img/blogs/2023-01-30-newsboat-freshrss.png"
---



So after a rabbit hole checking out some channel recommendations by The Linux Cast's [latest video](https://youtu.be/BoFvhB9krEo). I stumbled upon some videos and content related to RSS that ended up making me do this blogpost sharing what I learned. I will mention the sources as I go.

# Newsboat queries are what I need

All this time, I've actually been using FreshRSS' web UI more often than Newsboat. The reason?

FreshRSS shows me all the posts from all the sources that belong to a category, letting me filter out what I wanted. Newsboat, by default, will start up showing all the sources, and then you would be able to open them one by one, and individually check their feeds. It has a way to see all the tags (which would be categories on FreshRSS), but opening one would, again only open the sources, where I would only be able to navigate one feed at a time.

The thing is, I mostly follow personal blogs, and even if the people I follow were like me and did one post per day, being able to just read their feed would mean that I would only have a couple posts until I stumbled upon an article I already read. I wanted to have all the posts from everyone I followed! I just didn't know if it was possible...

However, today I learned about [Newsboat queries](https://newsboat.org/releases/2.30.1/docs/newsboat.html#_query_feeds), and its an absolute game changer for me. Using a relatively simple syntax, I can create my own feeds, which are populated by whatever fits a query I can define. This is achieved by adding something like the following to my urls file:

```
"query:Personal Sites:tags =~ \"Personal sites\"" "Personal sites"
"query:Company Blogs:tags =~ \"Company Blogs\"" "Company Blogs"
```

You can even use some other parameters to make more specific queries, like filtering based on the article title contents:

```
"query:1080p Torrents:tags =~ \"Torrents\" and (title =~ \"1080\" ) ""Torrents"
```

The official documentation I linked has some more examples. And a [here's a video](https://youtu.be/PUxPUdyCy_U) by [@gotbletu](https://www.youtube.com/@gotbletu) that explains it a bit more. I had actually already watched one of his other videos [about using FreshRSS with Newsboat and mobile apps](https://www.youtube.com/watch?v=RWk8OIi82U4), but I somehow missed that he was using queries. They are truly awesome.

# Using FreshRSS for web scraping

There are a ton of websites out there, however, not all of them are the same, and not all of them are kind enough to provide an RSS feed. With the release of FreshRSS 1.20, scraping websites using XPath became possible. However I had been lazy and ignorant on what it did, so I didn't bother trying it out. After all, there are a lot of websites that already have RSS, and if one refused, I am sure there would be others I could use instead.

But I decided to give the feature a try after finding [a blogpost on how to do it](https://danq.me/2022/09/27/freshrss-xpath/), which was cited by gotbletu. Just like in that article, I will use a website as an example. Lets go for [Casio's news section](https://www.casio.com/intl/news/), because I quite like Casio watches.

## Steps to follow

1. __Add a url:__ the plain url, since there's no feed.
2. __Add a Feed title:__ this can be obtained with a query (usually something like `//title` or in this case, `//h1`) or set as a string.
3. __Set what defines an item:__ using your browser's developer tools, you can use the inspector to check the html and find if there's a class or something that defines an article. In this case, something like:
```html
//a[@class="cmp-newslist__link"]
```
4. __Item title:__ this should be relative to the item. In Casio's case its something like:
```html
descendant::div[@class="cmp-newslist-item__title"]
```
5. __Item link:__ This maybe a tricky one, but not really, since the link is already in the main item, in this case we do:
```html
@href
```
6. __Item content:__ Sometimes there is a summary or description, this is not the case here. But its similar to the item title.
6. __Item date:__ From here on, its all up to what you can parse, and how well structured the website is. For the date here I had:
```html
descendant::div[@class="cmp-newslist-item__date"]
```

Other things such as author, thumbnails and so on can be extrapolated quite easily, or see the blogpost if you need more help. To finish, just hit the __Add__ button and test things out!

Sometimes, like me, you will not fetch the things you intended to. You may have problems and its a matter of experience, trial and error and getting used to how HTML and the XPath syntax work. Some of the problems that may happen are getting the wrong date, having the item link go to the main website instead, or no items showing up at all. Keep trying!

## Full article content?

Of course, XPath works to fetch the items and basic metadata from whatever list, feed or archive is used by the website you are scraping. I did a different blogpost if case you want to learn how to get the full article content too, using FreshRSS's CSS selector feature. [I wrote a tutorial for it too]({{ site.url }}/blog/fetch-full-article-content-freshrss/). Since then, a couple extra features, such as ignoring some sections of the contents has been added. So please explore the features of FreshRSS, its fun. Feel free to check [other posts I did related to RSS]({{ site.url }}/tags/rss)

{% include img.html image="/assets/img/blogs/2023-01-30-newsboat-freshrss.png" alt="Newsboat query feed and the inspector view of the Casio website" caption="Newsboat query feed and the inspector view of the Casio website in a sick thumnail I edited with GIMP" %}

This one actually feels like a rather nice blog instead of my typical bursts of kinda whatever content I write in a whim. I did put some effort into this one (its actually more than a thousand words 🤯), so I hope you enjoyed it, just like I enjoyed improving my RSS experience and writing this down.

I love RSS, I love FreshRSS, I love Newsboat, and I love you, dear reader!

This is day 30 of [#100DaysToOffload](https://100daystooffload.com)


{% include reply.html %}
