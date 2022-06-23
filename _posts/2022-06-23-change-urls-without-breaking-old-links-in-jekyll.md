---
title: Change URLs without breaking old links in Jekyll
header: Change URLs without breaking old links in Jekyll
description: Using Jekyll and static site generators comes with its own set of problems, one of them is changing URL formats without breaking the previously used links. Thankfully, the solution is fairly simple.
tags: tutorial jekyll webdev
layout: post
permalink: /blog/change-urls-without-breaking-old-links/
date: 2022-06-23 16:13:35 -0500
host: fosstodon.org
username: joel
com_id: 108528967322278227
---

When I started this blog using Jekyll I was amazed at the power it had, using simple plain markdown files and some yaml metadata. One of my favorite features is adding a custom permalink for each blog, which lets me change it from the default, for example, this post would normally have the following URL:

```
https://joelchrono12.xyz/2022/06/23/change-urls-without-breaking-old-links-in-jekyll.html
```

However, by setting a `permalink` in the yaml metadata, I can simply have something like:

```
https://joelchrono12.xyz/blog/change-urls-without-breaking-old-links/
```

Which is shorter and easier to type.

However, before doing my [rofi script for automatic post creation]({{ site.url }}/blog/rofi-automated-blog/) I initially created my markdown files by hand, and I didn't really had a format to follow, some of my posts had `/blog/post.title`, others had no permalink set at all, and others just had `/post.title`.

This means that the generated static files are all over the place, and I kinda wanted to clean that up.

The solution is really simple. I just installed the [jekyll-redirect-from](https://github.com/jekyll/jekyll-redirect-from) plugin. After reading the README in their repo, I realized this was exactly what I needed. I won't really explain it here since its fairly easy to do, but feel free to ask me if you feel like it.

You can test out how the plugin works on my website, here are some of the old URLs that should now redirect you to the new one. You may also find some of those old posts of mine kinda interesting too!

- [A comparison on Newpipe and Youtube Vanced](/newpipe-over-vanced/)
- [Privacy focused browsers for Android](/privacy-android-browsers/)
- [Asking for forgiveness for small things](/request-forgiveness-for-small-things/)
- [Changing my Android custom rom](/changing-android-rom/)

Even in those old articles I link to some more posts that are still using a different format, which will be redirected too. If you found this useful please let me know!



