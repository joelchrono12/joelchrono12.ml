---
title: Using KDEConnect 
header: Using KDEConnect 
description: How I use KDE Connect on my window manager to sync and share stuff on my devices
permalink: /kdeconnect-use/
date: "2021-02-12 13:17:00 -0600"
layout: post
tags: android linux foss
comments_id: 2
---

The first distro I ever installed was Pop_OS, and I really liked how shiny and feature rich it was. After a few weeks of using it, installing apps and programs to try it, I found this little utility called [KDEConnect](https://kdeconnect.kde.org/), and there was an extension for GNOME named [GSConnect](https://extensions.gnome.org/extension/1319/gsconnect/), and I decided to try it out

This utility allows me to keep in sync my phone with my laptop. It can show my notifications between them, send and receive files or access complete folders. 

I kinda liked how it worked, so I used it for a while, but then I changed my distro, as well as my desktop environment, [in favor of a tiling window manager](/spectrwm-setup/). 

## Using KDEConnect on a Spectrwm (or any window manager)

After that, I stopped using it for a while, because I thought it wasn't possible to use on something other than KDE or GNOME. But I was wrong. I saw [Brodie's video](https://www.youtube.com/watch?v=xMm_gtVKDpg) on it, decided to search it on the repos, and after some setting up, it worked almost flawlessly.

<figure>
  <img alt="kde connect utilities" src="/assets/images/blogs/2021-02-12/kde-connect.jpg" />
  <figcaption>The different applications provided by KDEConnect</figcaption>
</figure>
I added it to my config file, so it runs when the WM opens for the first time, and despite some hiccups where it sometimes does not connect automatically, it is almost flawless and as useful as in any full DE. I want to note that if you want to get an applet on your systray you have to start the `kdconnect-indicator` command.

Adding to this, I recently found a very interesting [browser add-on](https://github.com/pdf/kdeconnect-chrome-extension) that allows me to share my browser tabs to my phone with only a couple of clicks, and I found that extremely useful too, the only caveat with it, it that it is not updated anymore, but I don't think it needs to.

## Setting it up on my android device

In order to sync my laptop with the phone, I needed to install the app, which is available on [F-Droid](https://f-droid.org/en/packages/org.kde.kdeconnect_tp/). after that, setting it up is quite simple.

<figure>
  <img alt="kde connect on android" src="/assets/images/blogs/2021-02-12/kdephone.jpg" />
  <figcaption>Android interface of KDEConnect</figcaption>
</figure>

The android client comes with many features, like the ability to perform any command you wish, from your phone to the computer, This is extremely useful (but could also be very dangerous), so, like most of the functions, you can choose to disable them, and you can enable or disable the functions you want to be able to perform, in case you have some concerns with them. 

## Should you use it?

Initially, this was one of those applications I didn't use that often, but the few moments I did, were super useful. But ever since I rediscovered it, and found that add-on to share tabs. I wanted to share it here. If you have not used it before, give it a try! It's a really useful tool.

This has been day 8 of [#100DaystoOffload](https://100daystooffload.com), A little rushed, but honest work. 

If you are reading this, let me know if you are using KDEConnect, or if you have found programs that work better for your workflow. I am willing to try more stuff out for this, especially the tab sync since I feel like there should be a way to do it that doesn't require kdeconnect and its also browser independent
