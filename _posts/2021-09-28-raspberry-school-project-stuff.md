---
title: Raspberry school project stuff
header: Raspberry school project stuff
description: So I finally made something kinda cool for school on my Raspberry Pi and I might do some more school stuff pretty soon too
tags: raspberrypi school project coding
permalink: /blog/raspberry-school-project-stuff/
layout: post
date: 2021-09-28 18:33:13 -0500
host: fosstodon.org
username: joeligj12
com_id: idcomments
---

So yeah I don't really have a lot of time to make an epic post, and its been a while since my last one, but well.

Last week our teacher showed us how to create databases using mariadb and how to manipulate it with Python and the PyMySQL library, so I got working on it and created my own database.

We had to make some sort of parking lot with 15 spaces to be used by vehicles, and all I had to do was keep track of which ones were being used or freed. I did this with a simple database with 15 slots and a state.

I also had to move a servo-motor so it works as the entrance, it goes up and down to let cars in and out. I even made it go smoother by making a for loop and changing the work frequency grade by grade with a timer.

Keeping track of the cars and making sure there are no weird errors was kinda fun. This project allowed me to experiment with Python, using stuff that I don't really do when using other languages, like `try` and exceptions to detect stuff. 

For example, when a car exits, I need to know the space it used, and I don't want the code to fail when the user inputs "18" or "-4". Although I could just make an a few conditional statements, I decided to add an exception to the `IndexError` from PyMySQL and take care of stuff that way.

It was quite a nice experience, I also had to help half a dozen of classmates who are still not used to the Raspberry Pi and are unwilling to learn Vim for some weird reason. Anyways, I have had a lot of homework and a new *exam* coming up pretty soon, which will be quite a nightmare for me, since it looks like this semester I am only good at Embedded Systems...

Anyways, this was post number 56 for [#100DaysToOffload](https://100DaysToOffload.com), I hope you enjoyed this quick post which almost feels like a mastodon thread, but anyways, have a nice day!
