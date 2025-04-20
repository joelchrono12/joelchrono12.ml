---
title: I use Arch, btw
header: I use Arch, btw
description: I finally decided to give Arch Linux a try, and to get rid of my Windows partition once and for all. So far so good!
tags: foss linux
permalink: /blog/i-use-arch-btw/
layout: post
date: 2025-04-20 17:30:00 -0600
host: fosstodon.org
username: joel
com_id: 114372857666771653
---

For some reason---definitely not sheer peer-pressure--- I have decided to switch to Arch Linux.

Void Linux was already perfect for me, seriously, no complaints, would install again. However, I wanted to get rid of Windows 11, which, I must confess, I had been dual-booting on my current laptop [ever since I got it](/blog/new-laptop-new-distro/). So, I would have to wipe the drive, create new partitions, and reinstall my OS.

Since I was wiping my current system anyway, and I had never tried pure Arch Linux---one of the stepping stones towards becoming *one with the penguin*---I thought it was a good time as any to give it a go once and for all.

What took me the longest time was *actually starting*. I made posts on Mastodon, about ["I got the iso downloaded"](https://fosstodon.org/@joel/114350116118881603) and ["I have the usb ready"](https://fosstodon.org/@joel/114354086809575387) and ["I'm only backing up my data now."](https://fosstodon.org/@joel/114353777477261900)

I spent more time leaving it for later, compared to the time required to actually do the installation. I don't know why I was so afraid of messing it up, when I had already created backups of every file I had on a usb drive and an hdd. Even if it didn't work, I could just try again. It was just the fear of the unknown creeping up within me.

In the end, I my friends gave me the final push needed, I booted into the USB environment, and got started.

## Installation

I followed the [official guide on the Arch Wiki](https://wiki.archlinux.org/title/Installation_guide). I wanted to try full disk encryption, so I followed another article to setup [LUKS on a partition](https://wiki.archlinux.org/title/Dm-crypt/Encrypting_an_entire_system#LUKS_on_a_partition) and [swap partition encryption](https://wiki.archlinux.org/title/Dm-crypt/Swap_encryption#Using_a_swap_partition). Finally, I watched a video [to setup GRUB in the end](https://youtu.be/kXqk91R4RwU).

I shamelessly used my work laptop to access the website---thankfully not blocked by their firewall---which was really helpful and much faster than moving around the different pages using a phone.

My partitions ended up looking something like this:

```
NAME        MAJ:MIN RM   SIZE RO TYPE  MOUNTPOINTS
sda           8:0    1 114.6G  0 disk
└─sda1        8:1    1 114.6G  0 part  /run/media/chrono/live-usb
nvme1n1     259:0    0 476.9G  0 disk
├─nvme1n1p1 259:1    0     1G  0 part  /boot
├─nvme1n1p2 259:2    0     4G  0 part
│ └─swap    253:1    0     4G  0 crypt [SWAP]
└─nvme1n1p3 259:3    0 471.9G  0 part
  └─root    253:0    0 471.9G  0 crypt /
nvme0n1     259:4    0  27.3G  0 disk
```

For some reason, if I added the swap partition to my `fstab`, the system would take like 2 minutes to boot after I typed the passphrase for `root`, so I commented it out, leaving only the UUID of the `boot` and the encrypted `root` partitions. Once removed, now I have to type a passphrase two times, for both partitions. Not ideal, but I don't reboot my computer that often to annoy me. Even if the drive were on fstab, it was supposed to ask for a passphrase twice anyway. Not sure what happened there.

Once I booted up, I could do some things, but I realized I had no internet connection. I had enabled the NetworkManager service, but I had no networks saved in the installed system, thankfully I remembered that `nmtui` exists, and I managed to setup my network, wi-fi worked first try. Gotta thank my [Raspberry Pi usage](/blog/getting-a-raspberry-pi-to-play-with) for showing me how stuff like this works.


I also setup [getty](https://wiki.archlinux.org/title/Getty) to autologin to my user after boot. I figured that if I already have two passwords in a row at boot, I can let this one slide.

## Setting things up

I am yet to [install a display manager](https://wiki.archlinux.org/title/Display_manager), I might do it because sometimes other people use my computer, but for now, `startx` works just fine. My `.xinit` file has these lines:

```bash
export QT_QPA_PLATFORMTHEME=gtk3
export GTK_THEME=Skeuos-Blue-Dark
setxkmap -layout latam
lxsession &
exec dwm
#exec cinnamon
```
I fully restored my window manager, `dwm` [to my setup](/blog/back-to-dwm/), which has worked for me for a while now.

I installed `hyprland` to mess around with, I still don't make any proper configurations to it though, we'll see.

I got the `nerd-fonts` package, which I used in my config files for `dwm`and `alacritty`, but they don't seem to work properly, there is a bunch of glyphs missing, or rendering as weird squares.

Thunderbird refused to connect to the email provider I use when installed via `pacman`, so I just went with the tarball they provide in their website and now it's working just fine.

I installed the Cinnamon Desktop to see how it would work, but on `dwm` my gtk apps refused to use the theme I appled to them using `lxappearance-gtk3`. After setting the `GTK_THEME` environment variable, installing the gtk3 versions of some apps that I had using gtk2 (like `pcmanfm`), and setting `QT_QPA_PLATFORMTHEME=gtk3`. Now it's all fine!

Getting audio to work was a bit annoying, I used to have `pipewire`in the `.xinit` file before, and also in my `dwm` autostart config. I noticed they had systemd services that were constantly having issues. After removing all the ways I had to initialize `pipewire`, `pipewire-pulse` and `wireplumber`, I re-enabled the systemd services, and now it just works, regardless of the desktop environment or window manager I use.

Another thing I always end up doing, is enabling Natural Scrolling and tapping to click on my touchpad, I am using a laptop after all. I just [followed the wiki](https://wiki.archlinux.org/title/Libinput) and created the file `30-touchpad.conf` with this inside:

```
Section "InputClass"
    Identifier "touchpad"
    Driver "libinput"
    MatchIsTouchpad "on"
    Option "Tapping" "on"
    Option "TappingButtonMap" "lmr"
    Option "NaturalScrolling" "true"
EndSection
```

Honestly, most of this troubleshooting is identical to what [I did on Void Linux a while back](/blog/troubleshooting-void-linux), so it wasn't that big of a deal.

## To-do list

- Install a display manager and get it looking nice.
- Install a desktop environment and configure it for other people to use
- Fix nerd-font glyphs issues
- Setting up printers, I got a new (to us) Epson printer, no idea if that'll work
- Configure Bluetooth, so I can connect my gaming controller
- Fix ActivityWatch not collecting browser usage (there's some issues already, probably an update)
- Get MTP working to connect my phone to my computer
- Whatever I missed, there's probably something that I don't know I need until I do!

## First impressions

If I am honest, this looks and feels quite similar to Void Linux, except that I started out from scratch, and of course, I have to input two passwords to decrypt the system.

The install experience was quite interesting, seeing and understanding how all the different scripts and files interact was fun. I think I already knew most of these things, used in separate situations, but having to connect that knowledge together during the process was really satisfying, to say the least.

Now that it's set and done, it really isn't that different to Void or other distros, other than the fact that I'll have to figure out how to do things whenever I find a roadblock, and I'll have to be somewhat mindful of the updates, and watch out for any problems that might arise.

Yesterday there was an update for both `GRUB` and `systemd`, and I immediately had PTSD about those worst case scenarios people share on reddit, forums and Discord servers. Nothing happened, except for my autologin getting screwed up because of my own fault, and then I screwing myself up because I typed `-o chrono` instead of `-a chrono` in the `getty@.service` file.

Nothing a quick live usb environment couldn't fix, to be honest.

Overall, I am happy with the change, everything is back to normal, and I expect to be able to tackle most of the hiccups along the wayhiccups along the way. So, I can finally say...

*I use Arch btw.*

This is day 51 of [#100DaysToOffload](https://100daystooffload.com)
