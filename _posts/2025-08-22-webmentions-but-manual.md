---
title: Webmentions but manual (for Jekyll)
header: Webmentions but manual (for Jekyll)
description: Well I had been meaning to try to implement something like this and this is how I implemented it in my Jekyll website
tags: movies review
permalink: /blog/webmentions-but-manual/
layout: post
date: 2025-08-22 19:30:00 -0600
host: fosstodon.org
username: joel
com_id: 115076387570590845
---

*Disclaimer: This is not how webmentions work at all, in fact, I don't even understand them, however, if you want something kinda similar, you can keep reading.*

Over time, some of my posts have gathered enough attention by some people to inspire them (or trigger them) to write a reply to my own stuff.

This is usually a pretty nice way for conversation to spark among the blogging community and it's always nice to see someone replying to me and mentioning me on social media or sending me an email sharing a link to their public response.


A few days ago, I wrote a blog post talking about [webrings, clubs, and blogroll I'm part of](https://joelchrono.xyz/blog/webrings-clubs-and-blogrolls-im-part-of), a huge list of sites and pages that link my website on them, this of course didn't take into account individual blogposts, just the main url.

[Webmentions](https://webmention.io/) have been around for a while now, they're are a very interesting protocol that allows websites to interact and call each other as if they were they own sort of social media. It's very extensive and not too difficult to implement in something like Wordpress or some drop-in solution. However, while very cool, they seem to be a pain to get to work on a static website like mine, and also pretty prone to spam and other maintenance issues, [from what I've seen](https://brainbaking.com/post/2023/05/why-i-retired-my-webmention-server).

Sometimes when I realized a blog post was mentioned pretty often, I would add links to the bottom manually, to help their responses get to more people and amplify their reach.

This is nothing new, I've seen some other posts like [Marisabel's](https://marisabel.nl) and [Jedda's](https://notes.jeddacp.com) calling these link replies **Community Echoes**, and yes, that name is absolutely awesome, and while I probably can just use it without any further thoughts, I wanted to name them something else just to be *~unique and different~*

Alas, **Blog pings** are upon us. Maybe the name doesn't make much sense (I think *pong*  would be better in this case?) but let's not pay any attention to that.

## How it looks

Right now there's a new slashpage at [`/pings`](/pings) and you can visit it right now to see how it works!

Basically, it's a list of blogposts of mine, with another nested list of links that reference or are related to the post I wrote.

At the same time, every blog post will now include the blog pings at the bottom of the article, an example would be [Blogging Expectations](/blog/blogging-expectations/#pings) which has managed to inspire quite a lot of comments and replies!

These are present in the RSS feed as well, and they still manage to be under the footnotes if the post has them.[^1]

[^1]: If the links are added by hand in the raw markdown file, footnotes would be under the pings, which would look weird since it's a list after another with no separation between them!

## The setup

I use [Jekyll](https://jekyllrb.com) for my website, and it makes use of the YAML metadata to add certain parameters, such as the `title`, `date`, `permalink` and other values. Alongside the officially supported ones, you can also create your own, and call them at any moment making use of the [Liquid](https://shopify.github.io/liquid/) templating language.

First, I added metadata like this:

```yaml
title: "Example Title"
date: "YYYY-MM-DD"
mentions: 
    - title: Blogging Expectations
      url: https://kevquirk.com/blog/blogging-expectations
      author: Kev Quirk
    - title: Blogging Expectations
      url: https://thomasrigby.com/posts/blogging-expectations
      author: Thomas Rigby
```

In my case, I use a [Jekyll Layout](https://jekyllrb.com/docs/step-by-step/04-layouts/) for all my posts, so I added the following to the end section of it. This can probably be turned into an [Jekyll Include](https://jekyllrb.com/docs/includes/), which would let me simply drop it in other places, if I wanted to do so.

Right now, I have this in both my `post.html` and my `feed.xml` templates.

{% raw %}
```html
<!--Rest of HTML post template here-->
{% if page.mentions %}
<h2>Blog pings</h2>
<p>Articles around the web that reference this post. 
I add them manually, so let me know if you link to me!</p>
<ul>
{% for mention in page.mentions %}

<li><a href="{{ mention.url }}">{{ mention.title }}</a> by {{ mention.author }}</li>

{% endfor%}
</ul>
{% endif %}
<!--Rest of HTML post template here-->
```
{% endraw %}

Finally, to generate the page that lists every post and every ping to it. I came up with the following Liquid syntax and put it in a `pings.md` file in my root directory. Keep in mind I removed some classes and HTML elements that I use in my personal implementation and styling.

{% raw %}
```html
<ul>
{% for post in site.posts %}
{% if post.mentions %}
    <li>
        <span><a href="{{ post.url }}"><b>{{ post.title }}</b></a></span>
        <span>{{ post.date | date: "%b %d, %Y" }}</span>
        <ul>
            {% for mention in post.mentions %}
                <li><a href="{{ mention.url }}"> {{ mention.title }}</a> by {{ mention.author }}</li>
            {% endfor%}
        </ul>
    </li>
{% endif %}
{% endfor %}
</ul>
```
{% endraw %}


## Finding the pings

With everything set and done, now I just have to know where have I been mentioned in the past. There are a couple of ways to do this, such as simply googling your url and excluding your website using a search engine. Here are a couple options:

- [Marginalia](https://marginalia-search.com/site/) actually lets you see the backlinks to your site rather easily.
- [Backlinkwatch](https://www.backlinkwatch.com/) allows you to look up backlinks too, it looks like it was made in the 90s but works well enough.
- [FreshRSS](https://freshrss.org) works if you follow a lot of blogs and websites, using a [User Query](/blog/using-freshrss-user-queries/) to look up your url in websites other than yours.

## Finishing up

Well, this is pretty much it, to be honest. It does require quite a bit of manual labor to get going, and will probably stay that way as more and more sites link to my posts. I don't really mind though, it's kind of fun for me to just collect all of those pings.

So, yeah, if you want to link an article of mine in your website, let me know at once!
