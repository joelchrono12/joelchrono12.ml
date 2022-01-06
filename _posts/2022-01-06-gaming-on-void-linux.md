---
title: Gaming on Void Linux
header: Gaming on Void Linux
description: So yesterday I installed Steam, and I did run into problems, I guess Linus is right about some stuff, I mean, is anyone even trying to say otherwise?.
tags: gaming foss 
permalink: /blog/gaming-on-void-linux/
layout: post
date: 2022-01-06 09:50:13 -0600
host: fosstodon.org
username: joel
com_id: idcomments
---

I run Void Linux, which I have to say, its not the easiest distro to run, so there were definitely a couple of caveats I had to work around to get gaming with Steam.

For some reason, installing Steam does not install all of the required dependencies, I had to go to check the deprecated wiki and read some kind of hidden README (*I mean*, they are in `/usr/share/doc/*`, but still not ideal) files to check all of the required 32bit dependencies and drivers I had to install too.

At first I missed some, and there were some errors making mention of gLX and other graphical things I can't bother explaining. As soon as I installed all the extra packages, Steam ran fine.

I was finally able to install some things. During these holidays, I finally decided to buy some stuff, I decided to get Axiom Verge, Hollow Knight and CrossCode. The first two are pretty well known games of the Metroidvania genre, and the 3rd one was chosen because I saw it on Linus Tech Tips and it looked like the kind of game I would really enjoy, I am going blind just read the description and looked kinda dope, so I hope I have a good tame with it.

I also installed Splitgate, which had native support (all of the games did) and looked to be quite fun, since I saw it featured in many places such as the Destination Linux podcast.

I have played a few native games before available in my distro's repositories, Super Tux Kart is awesome, Cave Story is available and runs perfectly, and 0AD is tempting me more and more, so I might install it soon too.

Anyways, back to Steam, I decided to run Axiom Verge, since it looked like the simplest one to run, and well, it worked just fine, no hiccups, sound working, keyboard working, I don't really have a controller but I wanna think it would have worked too.

Then I ran Hollow Knight, and I was a little disappointed. The game started, but it just closed itself after a few seconds, no splash screen, nothing.

I tried CrossCode, and it crashed too after showing the starting menu. I ran it again, and it crashed even faster. 

So, no luck, I go ahead into #voidlinux IRC channel and get some answers, I reboot my laptop, I delete some files, sadly, nothing was working.

In the end, I decided to go ahead and try the Flatpak version of Steam. I did not think it would work since the comments on it were mixed. Thankfully, it worked just fine for me, the install went flawlessly. I had to reinstall everything, but Hollow Knight worked first try, as well as Axiom Verge. I am still not done installing all the games I had, but that's OK, since I will be able to have some fun in the mean time.

If games start failing again, I might have to consider switching away from Void again, but maybe I will be able to keep it up, unless of course, some teacher makes me install some random Windows software that doesn't run on Wine. 

On a side note, I use Backloggd to keep track of games I am playing, is like Anilist of Letterboxd, but for games, so if you want to keep track of the titles you've played, you might want to try it out and also [check my profile!](https://www.backloggd.com/u/joelchrono12), 

This has been day 75 of [#100DaysToOffload](https://100DaysToOffload.com).
