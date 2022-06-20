---
title: A troublesome Raspberry Pi install
header: Storing GPG keys on KWallet
description: I offered to help a friend who wanted to use a Raspberry Pi as a file server. But I got into a lot more trouble than I expected.
tags: linux raspberrypi storytime life selfhost internet
permalink: /blog/troublesome-raspberrypi-setup/
layout: post
date: 2022-06-20 11:00:51 -0500
host: benign.town
username: joel
com_id: 108510703691746278
---

I've used a Raspberry Pi to selfhost a lot of stuff, such as Nextcloud or FreshRSS. Eventually I managed to inspire a friend to try it out too. He just wanted a simple file server that could be accessed on his network.

The distro of choice was of course [DietPi](https://dietpi.com/), which has proved to be quite powerful thanks to their software installation scripts that *just work*.

So I downloaded the OS image and flashed it with Raspberry Pi's Imager since I already had it installed. No real problems at all so far.

The first detail I noticed was that somehow Wi-Fi was not working nicely. This had already happened to me on my own Pi, but I didn't worry too much, since I connect to it via Ethernet. Which would be the case here too.

The setup was fairly standard, once the system was installed I went ahead and used their `dietpi-software` tool to install Nextcloud.

It was here were everything got a little annoying. My friend does not live in a very urban area, so the Internet is not of the best quality. There are constant hiccups and I had to re-run the script trying to have no downtime or errors. 

DietPi's scripts can detect when an error shows up and lets you retry the last command, so retrying the install was not difficult, it was just a matter of having to try each step a couple times.

At one point the script downloads the latest version using `curl`, a perfectly normal procedure. However, the download stopped midway and it looks like there was no check to verify the integrity of the tar file. So the script kept going until its time to extract the file, which led to an error.

So, retrying the latest command this time would not work, since the file is technically there, just broken. So how did I fix this?

Its easy right? just download again and replace the file. So I go ahead and ssh into another terminal, and I proceed to download the file, this time via `wget`. But for some reason, the download keeps failing or getting stuck.

Because of the bad internet, my friend actually has some different providers and modems. So I connect to another network and try downloading the file on my computer. It worked! although it was kinda slow. I could have connected the pi to such network but the Ethernet cable was not long enough.

So I go ahead, connect to the same network as the pi and `scp` the file to it.

Yet another failure. I don't know why would it fail, maybe Dropbear, the SSH server installed on the Pi, is not fully compatible with OpenSSH on my computer. The point is that I had to find another way to send the file.

Using the internet itself was not an option. Thinking back I could have just plugged a USB stick, mount it, place the file where it should be and call it a day. But I like to make things more difficult for myself.

I started a quick server on my computer, where I placed the file I needed, then I used wget to download it, since its the local network there was no problem at all.

Now I just gave the file the right permissions, placed it where it was expected (`/tmp/DietPi-software`, If I recall correctly) and retried the script. It all worked out and the installation finally finished properly.

Now, there is only one problem. Since there are a lot of available routers, sometimes my friend won't be able to access the local IP of the pi when connected to a different one. Of course, we already know the solution to that, installing [Tailscale](https://tailscale.com)! or setting up WireGuard, but I am lazy.

This meant that I would have to download it, and using the internet is not fun. Thankfully I just had to try the installation multiple times until it finally worked out.

Now it was just a matter of installing the Nextcloud Desktop client and Tailscale on his computer, and he got a personal Nextcloud instance for himself and his family. I didn't have a chance to setup more devices though.

This was quite a nice, challenging experience. I am glad it all worked out in the end and I felt pretty accomplished with what I did.
