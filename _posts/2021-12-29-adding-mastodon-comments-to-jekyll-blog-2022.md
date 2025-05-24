---
title: How to add comments to Jekyll blog
header: How to add comments to Jekyll blog
description: I have talked about comments on my blog before, but I think I finally found the final iteration of it, and it's now live!
tags: tutorial coding blog fediverse small-web jekyll webdev
permalink: /blog/how-to-add-mastodon-comments-to-jekyll-blog/
layout: post
date: 2021-12-29 10:20:00 -0500
updated: 2024-10-12 07:00:00 -0500
host: fosstodon.org
username: joel
com_id: 107531143511314399
---

As it usually is, I have already talked about this topic before, but I recently
did some changes both to the code and the styling of it, to make it better than
before, if I do say so myself.

First, I am going to credit every source of inspiration I got this from.
The original form of my commenting system was based on GitHub, I got it from
[an amazing post](https://aristath.github.io/blog/static-site-comments-using-github-issues-api)
by [Aristath](https://github.com/aristath). This is where most of my
current code is based on. In this case, however, I am using Mastodon's API instead of
GitHub's since I think that most of my readers use Mastodon or are part of the
[Fediverse](https://en.wikipedia.org/wiki/Fediverse).

Secondly, is the first iteration of Mastodon's code system I used, which I read
in [Carl Schwan's post about it](https://carlschwan.eu/2020/12/29/adding-comments-to-your-static-blog-with-mastodon/), this is what I used for a while, with GitHub in the mix too. 

After a while, Mastodon comments proved to be a lot more common and easy to set
up, and I eventually stopped using GitHub, because it also required quite a lot
of steps to set it up, compared to just posting in Mastodon. 

At some point, I decided to rewrite Mastodon's commenting code with a structure
similar to GitHub's, and I landed on this.


# Jekyll set up

To get started, I created a `comments.html` file inside the `_includes` directory which is part of Jekyll's structure. This way, you could add it to your `_layouts`folder, or any section of your blog, and just add `{% raw %}{% include comments.html %}{% endraw %}`, to tell Jekyll to insert that bit of code in there.

In order for said code to work, we are also going to need some metadata located inside of the front matter of each markdown file, in this case, we add the this:

```yaml
host: fosstodon.org
username: joel
com_id: 107526114775171486

```
Finally, we are going to start writing the HTML file that is going to be called
by every post we make!

# Front end

Edit `comments.html` and place the following lines:

```html
<link rel="stylesheet" href="/assets/css/comments.css">
<div class="article-content">
<div id="comments-list"></div>
<noscript><p>You need JavaScript to view comments here.</p></noscript>
<a id="load-comment">Load comments</a> 
<a href="https://{{page.host}}/interact/{{ page.com_id }}?=type=reply">Reply via Mastodon</a><br>
<script src="/assets/js/purify.js"></script>
<script>
    //Here will be the rest of the code
</script>
</div>
```

The first line will call some specific styling that you should add if you would
like to style or make it fit better. You could use mine, but I can't promise it
will work properly on your site.

Secondly, we have some `div` elements that are not really that important, it is
up to your CSS too.

Last, we call a couple of script elements that will contain the main JavaScript
code we'll use.

# The good stuff

Next we are going to add the main code will need to make all of this work as we
expect. This bit is going to print the comments by calling a different function
that will give format to each element.

## Main function

```javascript
document.getElementById('load-comment').addEventListener("click", async () => {
    document.getElementById('load-comment').remove();
    const response = await fetch('https://{{ page.host }}/api/v1/statuses/{{ page.com_id }}/context');
    const data = await response.json();
    if (data.descendants && data.descendants.length > 0) {
        document.getElementById('comments-list').innerHTML += "<h3>Mastodon Comments</h3>";
        let descendants = data.descendants;
        for (let i = 0; i < descendants.length; i++) {
            document.getElementById('comments-list').appendChild(DOMPurify.sanitize(createCommentEl(descendants[i]), {'RETURN_DOM_FRAGMENT': true}));
        }
    }
    else {
        document.getElementById('comments-list').innerHTML += "<p>⚠️ No Mastodon comments yet ⚠️</p>";
    }
});
```
As you can see, once the "Load comments" button is pressed, we're going to call
the main function, which will fetch data by calling Mastodon's API and return a
JSON, then we are going to access the `descendants` object, which should have an
array of comments and its properties, which will be processed with the function `createCommentEl()`.

## Comment formatting

This function will get the data from the JSON and create HTML elements based on
that data. Here is the function:

```javascript
function createCommentEl(response){
    let user = document.createElement('div');
    user.classList.add('mastodon-comment');
    let userAvatar = document.createElement('img');
    userAvatar.classList.add('avatar');
    userAvatar.setAttribute('height', 60 ); 
    userAvatar.setAttribute('width', 60 ); 
    userAvatar.setAttribute('src',response.account.avatar_static);
    user.appendChild(userAvatar);
    let userLink = document.createElement('a');
    userLink.setAttribute('href',response.account.url);
    userLink.classList.add('comment-author');
    for (let j = 0; j < response.account.emojis.length;j++){
        let emoji = response.account.emojis[j];
        response.account.display_name = response.account.display_name.replace(`:${emoji.shortcode}:`, `<img src="${emoji.static_url}" alt="Emoji ${emoji.shortcode}" height="16px" width="16px" />`);
    }
    userLink.innerHTML = response.account.display_name + ' @' + response.account.username;

    let commentDate = document.createElement('a');
    commentDate.classList.add('comment-date'); commentDate.setAttribute('href',response.url); commentDate.innerHTML = response.created_at.substr(0,10);

    let commentContents = document.createElement('div');
    commentContents.classList.add('mastodon-comment-content'); commentContents.innerHTML = response.content;

    let comment = document.createElement('div');
    comment.classList.add( 'comment-content' );

    user.appendChild( comment );
    comment.appendChild( userLink );
    comment.appendChild(commentDate);
    comment.appendChild( commentContents );
    return user;
}
```


As you can see, we are creating a bunch of HTML elements that will have content
from the JSON, we assign classes, child elements, and such.

In fact, the only thing I kept from Schwan's version is the way to call the API
and the basic structure, which I turned into Aristath's syntax.

I am no expert when it comes to JavaScript, but I think this is pretty readable
overall. At least a bit more than the code I based this from, or maybe I am now
used to this code since I've worked on it for a while.

I think this combines the best of the comment systems I have found online, so I
think I will stick to this method for quite a while, since I have been using it
for months, I just never took the time to explain it properly until now.

You can always check my website's source code to see how all of this is being
applied. And don't be afraid to leave any question you might have by contacting
me in any way you prefer below. 

This has been day 69 of [#100DaysToOffload](https://100DaysToOffload.com)

# Mentioned sources and posts

* [A new comment system for my static Jekyll site (Aristath)](https://aristath.github.io/blog/static-site-comments-using-github-issues-api)
* [Adding comments to your static blog with Mastodon (Carl Schwan)](https://carlschwan.eu/2020/12/29/adding-comments-to-your-static-blog-with-mastodon/)
* Previous posts by me talking about [GitHub's](/blog/adding-comments-blog/) and [Mastodon's](/blog/mastodon-comments-and-changes/) comment systems.


{% include reply.html %}
