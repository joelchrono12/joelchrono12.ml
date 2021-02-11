---

title: Adding comment support to my website
header: Adding comment support to my website
date: "2021-02-10 20:00:00 -0600"
description: How I added comments, and how I made them look good to fit with simple.css (and how you might be able to break them lol) :P
tags: foss linux programming
permalink: /adding-comments-website/
layout: post
comments_id: 1

---

So, back when I started this blog, which is not too long ago to be honest. I had no intention on adding comments, And the [guide on how to make a static site](https://kevq.uk/how-to-build-jekyll-site-simple-css/) I followed to build this, did not include that, in fact. The code snippet I used for the post snippet had the following text:

> I don't have comments on this site as they're difficult to manage and take up too much time. I'd rather concentrate on producing content than managing comments.
>
> Instead of leaving a comment, feel free to contact me ✉️ contact me instead.

And yeah, I was happy with that, but after sharing my blog in a Discord server where I talk to some friends, they kept demanding comments, not in a serious way, but just to troll me and annoy me (At least that's what I hope lol). 

But after that, one of them sent me a link to a [guide on how to do comments](https://aristath.github.io/blog/static-site-comments-using-github-issues-api)  using Git Hub issues API. And so, I did. I have to admit I just copy pasted everything in it at first, but after doing so, I realized that it had some conflicts with Kev's [Simple.css](https://simplecss.org/) framework, which I used to make this site look pretty. Since the profile pictures looked huge, and the formatting was all wrong, so I did not like the look of it. So it was time to get to work.

## Customizing CSS classes

To fix the avatar pictures, I added this to my custom.css file:

```
.avatar{
    opacity: 0.9;
    width: 2.5rem;
    border-radius: 30%;
    padding: 2px 2px;
}
```

This class is included inside of the comments.html file, that I took from the tutorial, some other classes, where also, so I had to customize them myself so they did not took the default properties provided by simple.css. Said classes are here:

```
.comment-url{
   line-height: 1px;
   font-size: 0.7rem;
   color: var(--border);
}

.comment-content{
  text-decoration: none;
  margin: 0 1rem ;
  padding: 0.15rem;
  font-size: 0.9rem;
  border-radius: 5px;
  line-height: var(--line-height);
  background: var(--code-bg);
}

```

## Good enough, but...

I realized I could use markdown inside of the comments. But, this means that comments are able to do headers, lists, and everything markdown can have. This meant that I had to limit and change letter sizes in order to make it work. At the beginning I had no idea of how to do it, but by reading the CSS inside of simple.css I realized how it contained stuff like `nav a { whatever properties }` and so. I decided to try and limit the image file size

```
.comment-content img{
	margin-left: 2rem;
	border-radius: 5px;
	max-width: 40%;
}
```

And it worked! So I did the same thing for the headers, and quotes, and everything that came to mind. In the end, I finally got some comments working. If you want to take a look at the [source code](https://github.com/joelchrono12/jekyll-site-test.css) of this blog, feel free to do so, since I changed it quite a bit from the original.



