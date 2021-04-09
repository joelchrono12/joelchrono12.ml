---
title: Doing changes to the blog archive page (and others) 
header: Doing changes to the blog archive page (and others) 
description: I have a blog made in Jekyll, I HAVE to make a blog every time I made changes to its layout. Added blog list split by year and month, and better tags layout too 
tags: foss programming tutorial ramble
permalink: /blog/changing-blog-sorting/ 
layout: post 
date: "2021-03-23 21:14:02 -0600" 
com_id: 105959292261665856
host: fosstodon.org
username: joeligj12
--- 

So, at this point you should not be surprised at a blog that talks about making and optimizing the way this blog is done. I already made some posts talking about the way I made [creating blogs easier](/blog/rofi-automated-blog) for me, so now I will talk a bit more, but this time about the blog layout itself. 

I have made some changes to the CSS, as well as modifying some pages, such as the [tags](/tags) and [blogs](/blog) one. Up until the creation of this post, the blog archive has been a relatively small list of all of the blogs I've made. However, thinking about the future, I wanted to split all of this into sections, divided by year and month. To do that, a [asked for suggestions](https://fosstodon.org/@joeligj12/105936877426053202) on Mastodon. And of course, I got some replies. I ended up on Stack Overflow and found some ways to do what I wanted.

After a check there, I added the following lines to my blog.md file (located on my site's root directory).
{% raw %}
```
{% assign postsByYear = site.posts | group_by_exp:"post", "post.date | date: '%Y'" %}
{% for year in postsByYear %}
  <h1>{{ year.name }}</h1>
{% assign postsByMonth = year.items | group_by_exp:"post", "post.date | date: '%B'" %}
{% for month in postsByMonth %}
<details><summary>{{ month.name }}</summary>
<ul>
  {% for post in month.items %}
   <li>
   <a href="{{ post.url }}">{{ post.title }}</a><br>
	 {% for tag in post.tags %}
    <a class="posttag" href="/tags/{{ tag }}">{{ tag }}</a>  
	 {% endfor %}
		📅 {{ post.date | date: "%Y-%m-%d" }} <br>{{ post.description }}
    </li>
  {% endfor %}
	</ul>
	</details>
{% endfor %}
{% endfor %}
```
{% endraw %}

I made use of the nice `<details>` HTML element which is quite pretty thanks to [Simple.css](https://simplecss.org), the CSS framework I am using right now. I also used them to the tags page, which has a similar structure to the blog, although is quite simpler.

{% raw %}
```
{% for tag in site.tags %}
  <details>
  <summary>{{ tag[0] }}</summary>  
    {% for post in tag[1] limit:3 %}
      <p><a href="{{ post.url }}">{{ post.title }}</a> - 📅 {{post.date | date_to_string}} </p>
    {% endfor %}
  <a href="/tags/{{ tag[0] }}/" class="button">All posts</a> <a class="button" href="/feeds/{{ tag[0] }}.xml/">RSS</a>
  </details>
{% endfor %}
```
{% endraw %}

Of course all of this might be quite weird and I am not going to pretend that I understand it all! I added tags a while ago and it took me some time to get the grasp of it. Remember that as a Jekyll SSG user it is my duty to let you all know of every little piece of liquid, HTML or ruby code I add to it!.

This was day 27 of [#100DaysToOffload](https://100DaysToOffload.com). Dont you love it when most of your blog consists of copy pasting already existing text and avoiding to explain most of it assuming your audience will understand it? I hope you did because I am done with this. I hope you read next one (and I hope its not as lazy)

If you want you can check more about this here:
* [How to display raw Jekyll code in a Jekyll site](https://stackoverflow.com/questions/22044488/jekyll-code-in-jekyll#22045747)
* [How to split posts by year and date](https://stackoverflow.com/questions/19086284/jekyll-liquid-templating-how-to-group-blog-posts-by-year)
