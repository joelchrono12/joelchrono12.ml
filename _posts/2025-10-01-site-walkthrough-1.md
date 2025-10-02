---
title: "Site walkthrough 1"
header: "Site walkthrough 1"
description: Why not write a walkthrough guide about the website you are visiting right now?
tags: blog
permalink: /blog/site-walkthrough-1/
layout: post
date: 2025-10-01 17:10:00 -0600
host: fosstodon.org
username: joel
com_id: 115302171628951217
---

Just today I saw Manu's post about some of the sections and pages on his website that [have always been there](https://manuelmoreale.com/thoughts/making-things-obvious), but for one reason or another people don't realize they exist.

Be it his [guestbook](https://manuelmoreale.com/guestbook), or his [P&B interviews](http://peopleandblogs.com/), sometimes it just isn't obvious!

As someone who considers himself a gamer, there are always those parts and secrets of a game that even after having played it more than once, you simply miss! Secret passageways, hidden levels, easter eggs and whatever else. Missing optional items or skipping whole sections of a game when you play it for the first time is not only common, but expected in some cases!

So, maybe you've been following me for a while and you like the blogposts, my thoughts or even me as a person. But are you aware of all the rest?

Videogames forums and websites tend to write these walkthrough guides to fully complete videogames and such, so I've decided to do the same for my website, a tour of every section my little corner of the web has to offer! You are always welcome to explore by yourself and try to go your own way, if you give up, or you just like reading, keep going with this post.

I recommend having the website open alongside the following page, in order to make things easier to follow, buckle up!

## The skeleton

Almost every page on my website contains the header, main and footer section. The quintessential structure of a decent page written in HTML.

The header contains my **logo**, and a **navigation menu**, which links to the blog archive, about page, contact page, now section, blogroll, a "more" section and a *human-readable* RSS feed. I'll explain what each of these do in due time.

*Here's a hint! the current section you're on will be highlighted to contrast with the background!*

Still in the header, you'll be able to see a breadcrumb of your current position in the website, this is pretty helpful to know your way back, and it's hidden from the home page.

Each page will have its title, a description and the content itself, but I'm sure you already know that. 😉

The footer is relatively dynamic, depending on the page you are, however, it's mostly the same everywhere, with minimal changes.

It's titled as **"More on this site"**, and features a list of **posts from blogs I follow**---which I guess are *not on this site* but whatever. It is fetched from their RSS feeds using [openring](https://git.sr.ht/~sircmpwn/openring). This list is generated at build time, which means that sometimes it'll be outdated for a while until I publish a new post or run `openring` again. If you are wondering why it's different from the last time you went through this bit, that's the reason.

*Important to note!* If you are exploring a blogpost, or any other place other than the home page (which we'll see next), a section linking to the most **recent posts** will display above the links to other posts! And if the article you read is among the latest ones, it will not be duplicated on this list, *what a neat feature!*

After that. there's a section for **buttons**, a collection of 88x31 badges that contain a little bit of everything, like clubs I belong to or software tools or websites I like. 

*By the way, you can also access the website's RSS feed by clicking the RSS badge. Redundancy for the win!*

Now, on smaller letters, there's a list of webrings I'm a part of, as well as their respective "next", "previous" and sometimes "random" links, required for the ring to be... a ring.

At last, there's a little legend saying that I built this site with lots of love (and with Jekyll), a button that links back to the top,  and another one which enables a trippy background that comes straight from *Chrono Trigger.* It maybe not be the most accesible thing ever, but it works.

## The home page

Like most good websites, I have a main page, or home or index. You get there by typing the url or by clicking on the **logo**, which is available in the **header** section of my site, mentioned before. 

*By the way. If your "main page" is just your stream of articles one after the other, I'm sorry but you're doing it wrong.*

Then there's a **welcome** section describing the kind of stuff I like to write about (*weirdly, it doesn't include guides to navigating the website itself, hmm*), and a little introduction of me. There's a pixel art avatar, which---fun fact---is not actually scaled up! anti-aliasing has been disabled using CSS trickery. Neat right? It's not fully supported everywhere though, I'm sorry dillo or qutebrowser users. 🙁

After that, you will see a small section displaying the latest track scrobbled on my Listenbrainz account. This is a neat little script, feel free to completely copy and paste it to your own site!

Then we get to the **latest blogs** section. This contains the five latest posts, titles, descriptions and publish dates, the title links to the articles. But we are not exploring those right now.

Right after that we have a **support** section, where I kindly ask you to maybe [buy me a coffee](https://ko-fi.com/joelchrono) if you like what I write, or even commission something from me---yes! I'm a bit of a digital artist, in case you didn't know, I also take a lot of time to actually get it done, but I'm sure that doesn't matter that much to you right? 🙂

## The blog archive

Here's where things can get quite complicated, it could be considered the first *"skill check"* of my website, but since you have made it this far, I'm sure you are more than ready to tackle it.

The blog archive (or just, the **blog**) is a list of every article I've ever published ordered in chronological order. I know it looks like A LOT to keep track of, as the available options to explore become suddenly endless, but don't panic just yet!

*By the way! At the time of writing, the possibilities aren't actually "endless", there's only **517 posts**, alive and well! This will increase in upcoming updates, if all goes well*

First of all, the description of the section, which at the end will link to the **tags** section, this is a more advanced area that we are not ready to explore yet, so I will probably leave it for a follow-up of this guide---make sure not to get trapped in there.

Right after, there is an expandable list divided by year and by month, you can quickly jump through a specific month's list by clicking on it! And glance at the amount of posts for each. This is a handy feature that for some reason is not available when viewing the actual complete list of posts down below---whoever designed this thing doesn't know a thing about intuitive design.

It's important to note that the blog archive is not paginated. Everything is one single page, organized by year and month. 

*A fun trick that this allows---but you shouldn't do!---is the option to use engine-level cheats, such as hitting `Ctrl + F` to look for specific articles by their title.*

Each listed post contains the title and date. If they are a reply---or a review for a book or game--- there will be an emoji to highlight them, which also links to the **tag** of that type of post, in case you only want to see those. Again, *you don't need to go there for now!* Although it's a little easier to explore a single tag, so feel free to look around.

## The about page

After the challenging journey that the blog archive represents, the about page is quite a relaxing area to wander about. There are not that many links, and it's easy to get to the bottom of it all. It's so linear, this guide might be unnecessary, but for the sake of completion, we can go through the basics.

As the title may imply, the About page simply contains information regarding the **author** and the **website** itself.

The author section will also contain a pixel art avatar featuring my upper body---because nobody needs legs to explore the internet! For some reason this pixel art *is scaled up*, and doesn't depend on the same cool tricks of the image in the Main page, no such thing as consistency.

The description of me is rather convoluted and I'd rather let you experience it live instead of ruining it for you. At the end, you'll see a list of my main hobbies and interests, sometimes it gets updated but sometimes it ain't worth doing so.

The website section is very, very short, it's almost as if the author just wanted to talk about himself and considered the technical details to be kind of irrelevant because most of the website is copy pasted from tutorials and other places.

Or maybe it's ok to be like that, whatever!

## To be continued

Well, I think the about page is a pretty good resting spot. Feel free to click on some things here and there, but don't get too comfortable, we'll soon have to explore an area where difficulty ramps up a bit.

Stay sharp, and be ready to face the dangers of the Contact page, and what lies further ahead, on part 2 of this adventure!




