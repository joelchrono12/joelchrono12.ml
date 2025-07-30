---
title: Using FreshRSS User Queries to keep up with your websites!
header: Using FreshRSS User Queries to keep up with your websites!
description: FreshRSS is still my choice for a selfhosted RSS Reader solution. And User Queries, which have existed for a while, are yet another reason why!
tags: rss tutorial software
permalink: /blog/using-freshrss-user-queries/
layout: post
date: 2025-07-30 08:10:00 -0600
host: fosstodon.org
username: joel
com_id: 114942666808163058
---

I love using RSS to keep up with the bloggers out there! and I follow a lot of writers that share stuff in their websites quite regularly, but sometimes it can be a bit of a pain.

This is the case with Week Notes. I love them! And I follow a lot of people writing them consistently, some just call them "Week Notes", some go for "Weekly Rewind" and I'm sure there are some people out there doing their own thing, such as how I recently went for titling them differently and just adding the week number at the end.

The point is, it's a bit of a struggle to get them all in one single place!

Here is where [FreshRSS](https://freshrss.org) comes to the rescue once again.

I have used and written about many of its features before, such as [word filters](/blog/word-filters) and [website scraping](/blog/newsboat-queries-and-freshrss-scraping), and even after all this time, it still manages to surprise me whenever I dive into its feature set once more.

User Queries are like word filters, but in the opposite direction. It is basically a bookmarked search term, that you can easily access in the web interface with a couple of clicks.

Unfortunately, I don't think there's any 3rd party client that can use this feature, but given that 99% of my usage is actually done on a computer, I can't really complain. Besides, Newsboat which is the terminal client I use on Linux, can probably replicate this, and if I ever get around to set that up, I'll update this post.

To create a query in FreshRSS web frontend, you just need to click the bookmark 🔖 icon in the top row of the main UI, and click on "Bookmark Current Query", this will take you to the User Queries settings page, where you can click the cogwheel to customize the behavior. Give it a name, description, image, share the query as an RSS feed or OPML. And of course actually define the query itself.

For my usecase, I started with this query:

```
intitle:week intitle:note
```

The usage of search parameters is explained on [FreshRSS' Documentation](https://freshrss.github.io/FreshRSS/en/users/10_filter.html#with-the-search-field), but in short, having parameters separated by a space is basically an AND operation between them, you can also exclude keywords and even regular expressions with `-` or `!`.

After messing around for a bit more, I ended up with the following query:

```
(author:gobino intitle:"weekly rewind") OR (intitle:week intitle:note) OR (intitle:"- W" author:joel)
```

Which takes into account the format preferred by [Steven](https://gobino.be) and my own updated weeknote format where I use different titles but they all end with the week number (such as "W30").

I have one or two queries for Monthly Summaries and also Link Blogs, so please let me know if you find other interesting ways to take advantage of them! Or if you don't use FreshRSS, do you have a different solution for this problem?
