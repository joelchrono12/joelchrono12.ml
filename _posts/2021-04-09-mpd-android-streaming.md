---
title: How to stream music to Android with MPD 
header: How to stream music to Android with MPD 
description: A quick and dirty guide on how to do music streaming from your desktop (or any device with a music folder) to Android with MPD 
tags: linux tutorial foss android music
permalink: /blog/mpd-android-streaming/ 
layout: post 
date: "2021-04-09 19:46:47 -0500" 
host: Fosstodon.org 
username: joeligj12 
com_id: 106038796524852893
--- 

So, this morning I was watching a video by HexDSL, where he rambles about many things (as usual). However, he mentioned something that got my attention. He is now streaming music to his phone[^1], using [MPD](https://www.musicpd.org/).

I decided to try and do the same. Streaming my own music has been something I've wanted for a while. I looked around for ways to achieve it and I found a blog by Joran Schrijver[^2] where he shares the solution I chose to follow, and that I am going to share here, as well as some troubleshooting I had to go to get this working. *You don't even need to have MPD installed on your desktop!*

# Install an android client

Now, we first need to install MPD itself, you can find it [here](https://f-droid.org/en/packages/org.musicpd). We also need a client to play our music from. There are many options, [MPDroid](https://f-droid.org/en/packages/com.namelessdev.mpdroid/) is one of them, it has not been updated in a while, but its interface is still decent if you want it. [MAFA](https://play.google.com/store/apps/details?id=software.indi.android.mpd) is the solution suggested by Joran, but it is paid, and I am not sure if it's FOSS, but if you don't mind, go for it. HexDSL however, suggested [M.A.L.P](https://f-droid.org/en/packages/org.gateshipone.malp/) and it's actually a really good FOSS option too, which is a little more recent, since its last update was 4 months ago.

# Satellite setup on your desktop

So, before we configure MPD on your client device, we have to setup a server. The way Joram did is with a quick Python command.

```
python -m http.server --directory ~/music 8000
```

I assume you can setup any other way you like.

# Configuring your Android device

Up until now, you could say I am just stealing Joram's blog, but here is where things change just a little bit. By following it, I got a bit stuck, so I went to the Arch Wiki[^3] for help with this problem. 

## Setting up MPD on Android

First things first, create a text file and name it `mdp.conf` and put it in Android's home directory (`/storage/emulated/0/mdp.conf`).

After that, you have to add the following lines to it. I got this additions from the wiki 

```
# located at /storage/emulated/0/mpd.conf
music_directory "http://desktop_ip_address:8000/"

database {
  plugin "proxy"
  host "desktop_ip_address"
}

audio_output {
  type "sles"
  name "Any name you want"
}
```

In order to know your PC's IP address, just run `ip address` on your terminal and look for it, It should be something like `192.168.0.x` 

Now just run the MPD app, there might be some exceptions or things that look like errors on the log, but as far as I can tell, it should be nothing serious. **Make sure to look for a line mentioning the loading of the config file**, you might have not placed it correctly, or have some mistake.

## Setting up your MPD Client

Now, you have to set up the Music player. Depending on your app, there might be some different paths to take.
These are the settings that show up by default (and it works), so I just want to share them to make sure we are on the same page.
### MPDroid

Go to Settings -> Connection Settings -> Default Connection Settings.
- Make sure your host is `127.0.0.1` (I assume it could be any localhost address). 
- Your port should be `6600`
- Password is up to you and your own settings.
- Streaming host is blank for me, I assume it can be kept that way.
- Streaming port is `8000`

You can play around with the settings. Also, there is a dark theme and you **must** enable it.

### M.A.L.P

You can go to Profiles, and set up the same things. However, there might be one already setup for you.

In both cases you will be able to see the output with the same name as the one you gave to it in `mpd.conf`

### In case something doesn't work

* Check your internet connection.
* ping the IP address and see if it is there.
* Try to enter from your browser and see if its there.
* Delete and add your network (Seriously, I was unable to find my host address, I even ran `nmap` with Termux on Android and it still didn't show up until I added the network again).
* Force close MPD and check your config.

# Now play some music!, and finish this up

If you did everything correctly, your music app of choice should begin to load your music library, and you should be able to play it with no problems.

Once again, I am not here to guarantee that this will work. You can check the footnotes for more help if you still did not manage to get your MPD streaming working.

The caveat of this, is that you have to keep your machine running that pyhton command. But you could figure out a way to make this better, the Arch wiki has some suggestions that you might want to take a look at.

This has been day 31 of [#100DaystoOffload](https://100DaystoOffload.com)

---

[^1]: [HexDSL tutorial here](https://hexdsl.co.uk/posts/i-setup-mpd-streaming.html)
[^2]: [Joram's tutorial here](https://www.joram.io/blog/android-streaming-mpd/)
[^3]: [MPD Tips and Tricks (Arch Wiki)](https://wiki.archlinux.org/index.php/Music_Player_Daemon/Tips_and_tricks#Music_streaming_with_the_satellite_setup)
