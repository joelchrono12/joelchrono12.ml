---

title: Adding comment support to my website
header: Adding comment support to my website
date: "2021-02-11 09:36:00 -0600"
description: How I added comments, and how I made them look good to fit with simple.css (and doing my best so you don't break them lol) :P
tags: foss linux coding jekyll webdev
permalink: /blog/adding-comments-blog/
redirect_from: /adding-comments-blog/
layout: post
comments_id: 1
com_id: 105713382289696745
host: fosstodon.org
username: joeligj12

---

Back when I started this blog, which is not too long ago to be honest. I had no intention on adding comments, And the [guide on how to make a static site](https://kevq.uk/how-to-build-jekyll-site-simple-css/) I followed (made by [Kev](https://fosstodon.org/@kev)!), did not include that. In fact, the code snippet shared in said guide for the post layout had the following message:

> I don't have comments on this site as they're difficult to manage and take up too much time. I'd rather concentrate on producing content than managing comments.
>
> Instead of leaving a comment, feel free to contact me ✉️ instead.

And yeah, I was happy with that, but after sharing my blog in a Discord server where I talk to some friends, they kept demanding comments, not in a serious way, but just to troll me and annoy me (At least that's what I hope lol). 

But after that, one of them sent me a link to a [guide on how to do comments](https://aristath.github.io/blog/static-site-comments-using-github-issues-api)  using GitHub issues API (so yeah, you will need to have one if you want to comment here, but at least it serves as a way to not have absolutely everyone doing so, limiting a bit). 

## Customizing CSS classes 🎨

And so, I decided to give it a try. I have to admit I just copy pasted everything in it at first, but after doing so, I realized that it had some conflicts with the [Simple.css](https://simplecss.org/) framework, which I used to make this site look as it does. The profile pictures looked huge, and the formatting was all wrong, so I did not like the look of it. I decided to keep working on it. To fix the avatar pictures, I added this to my custom.css file:

```css
.avatar{
    opacity: 0.9;
    width: 2.5rem;
    border-radius: 30%;
    padding: 2px 2px;
}
```

Where the `avatar` class is included inside of the comments.html file that I took from the guide, as well as other classes that I had to customize myself so they don't use the default properties provided by simple.css. Said classes are here:

```css
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

## Getting comments to look good ✨

Markdown can be used inside of comments too, so you can have headers, lists, and everything markdown can (I think). This meant that I had to limit and change letter sizes of them, so more CSS needed to be done. At the beginning I had no idea of how to do it, but after reading the simple.css file, I realized how some of the syntax worked. *After some attempts because I forget semi-colons exist and had to test different values*, it worked! So this is a snippet of how I limited the image file size first. 

```css
.comment-content img{
	margin-left: 2rem;
	border-radius: 5px;
	max-width: 40%;
}
```

So I did the same thing for the headers, and quotes, and everything that came to mind. In the end, comments were looking kinda nice, with a decent looking layout. 

Despite what my description said, I think there might still be something you can break on this approach, but well, please don't.  If you want to take a look at the [source code](https://github.com/joelchrono12/jekyll-site-test.css) of this blog, feel free to do so, since I changed it quite a bit from the original. 

So this was everything I did to add comments to my site. Once again, huge thanks to [Aristath](https://aristath.github.io/), for sharing quite a great resource, and [Abhinav](https://distrotoot.com/@abhi), who let me know of it. 

This was day 7 of [#100DaystoOffload](https://100daystooffload.com/), and I am quite happy with the final results. Let me know what do you think in the comments! (I was eager to write that, and I hope you can stop whining about this [marrero171](https://marrero171.itch.io/))
