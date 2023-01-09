---
title: I somehow broke my blog (but I fixed it)
header: I somehow broke my blog (but I fixed it)
description: I didn't do much today and I kinda had no ideas, so another post about tags yeeey
tags: blog short jekyll
permalink: /blog/i-somehow-broke-my-blog-(but-i-fixed-it)/
layout: post
date: 2023-01-08 23:39:53 -0500
host: fosstodon.org
username: joel
com_id: 109657699082629595
---

I actually did a little bit of stuff, like submitting a couple of PRs to Void Linux to update a couple packages I use!

But I literally only had to change like 2 lines of code, and I don't even know when the changes will be merged, if they don't conflict with whatever checks they do to see if the update was done properly.

Other than that, I have finally managed to receive some feedback via email regarding my blog!

Funnily enough, both of them were about some part of my blog being utterly broken.

The first one was my fault, it looks like I had some misstyped html in one of my Jekyll layouts, I had `hfer` instead of `href` and that stayed like that for months, and only now someone noticed. Thank you kind stranger! You even used a gpg signature and you have my respect!


The second email was about something broken with my tags. They're usually located at my website in `/tags/nameoftag`, *usually*. But they were not there anymore. I just couldn't figure out what was going out, until I decided to try and add `.html` to the end of the url, and there it was. For some reason the behaviour of my local Jekyll build and the one used by Vercel was different.

I use a Jekyll plugin (a ruby script which can be found in this site's [source code](https://github.com/joelchrono12/joelchrono12.ml)) to generate the files that eventually get populated with articles that match the tags they got. Thankfully, I just had to modify it a bit, so now it adds a permalink to the file metadata, and now it works just fine.

Still, I am so confused, since locally and in Netlify this problem did not happen at all. I got no idea.

Anyways, maybe in the future I'll also talk a bit about how I contributed a package to Void Linux. Its absolutely nothing special, but I have to write about something after all.


This is day 8 of my second run of [#100DaysToOffload](https://100daystooffload.com)

{% include reply.html %}
