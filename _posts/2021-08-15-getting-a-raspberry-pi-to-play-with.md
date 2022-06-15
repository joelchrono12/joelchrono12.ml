---
title: Getting a Raspberry Pi to play with
header: Getting a Raspberry Pi to play with
description: Last week, I got back to school, and I also got a Raspberry Pi. Lets say my attention got divided quite a lot
tags: coding tech linux foss school raspberrypi webdev
permalink: /blog/getting-a-raspberry-pi-to-play-with/
layout: post
image: "assets/img/blogs/2021-08-07-raspi.jpg"
date: 2021-08-17 15:19:28 -0500
host: fosstodon.org
username: joeligj12
com_id: 106773505756417500

---

So, going back to school was not as I expected, I thought I was going to be able to pay attention to the new classes and maybe take some notes, be a good student and everything.

But of course, I had to get a Raspberry Pi, and I just cannot stop being distracted by it. During the first couple of days I decided to try and move my website to it, self host a few things and try some new programs. 

<figure>
  <img alt="My Raspberry Pi setup" src="/assets/img/blogs/2021-08-07-raspi.jpg" />
  <figcaption>My Raspberry Pi setup</figcaption>
</figure>

Sadly, despite my best efforts, I was unable to open the necessary ports to the world, so I wont be able to self host at the moment. Thankfully, it looks like the network in the area we live will be updated to fiber. We will get some new modems and maybe the software and configuration allow me to have it working before this year ends.

# Setting up a pi-hole

After failing to use my Pi as a web server, I decided to at least use it as an local ad blocker, so everyone at my house can enjoy an ad-free experience. To do this easily, I used a software known as [pi-hole](https://pi-hole.net/).

Setting it up was extremely simple, I only had to run a simple script and then configure my router to use my Raspi as its main DNS. I added a few more host lists, blocked some specific domains, set up dark mode for the web UI, and voilá! 

<figure>
  <img alt="Pi-hole's web interface" src="/assets/img/blogs/2021-08-17-pihole.png" />
  <figcaption>Pi-hole's web interface</figcaption>
</figure>

It has worked quite well for me and my family, from time to time an ad will appear, but I just had to add it to the blacklist and say I won't see it again!

I have to use this device for a a University class, but I will only have to access it via ssh, since we'll probably do code for it and I already know how to live in VIM and of course, the terminal. I will love to teach my classmates a little bit about how Linux works thanks to this class, the teacher is a bit too strict tho, and does not like interruptions, so I am going to try and behave instead of correcting him everytime he pronounces commands in a weird way...

This has been day 53 of [#100DaysToOffload](https://100DaysToOffload.com)



