---
title: Blop static site generator
header: Blop static site generator
description: While my main site is using Jekyll, I actually have another site that serves as a simpler mirror to this one. There I use Blop, an SSG written in Bash that I can customize to my liking
tags: bash coding blog short small-web
permalink: /blog/blop-static-site-generator/
layout: post
date: 2022-01-14 20:12:58 -0600
host: fosstodon.org
username: joel
com_id: 107624156249951887
---

So, I have been part of a Tilde community for a while, a public unix server known as [tilde.cafe](https://tilde.cafe).

Because of that, I got access to some nice things, like a website, a gemini capsule and an email address, which is kind of nice. I have been using that site as a place to mirror this very same website in case anything happens. Like losing my current domain or anything like that.

[Blop](https://gitlab.com/uoou/blop/) is a pretty nice static site generator that is basically just a bash script that uses other programs such as sed, awk and pandoc to put together a simple site generated from markdown files and simple templates.

However, it had a pretty serious issue, at least for me. The generated html files ended with `*.html` instead of being a clean url like here in Jekyll.

So I forked the project, put some work into it and I actually managed to do it!

I am not that great of a bash coder, and it was not really a matter of bash but of knowing where to look and using `/` to search for the right things in Vim.

In the end I now have clean URLs in my [alternative site](https://chrono.tilde.cafe), which is kind of great.

You can take a look at my fork, which is not really that different from the original in my [tildegit](https://tildegit.org/chrono/blop) repository.

This has been day 83 of [#100DaysToOffload](https://100daystooffload.com)
{% include reply.html %}
