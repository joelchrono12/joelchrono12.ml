---
title: Fixing bootloader on Void (For me)
header: Fixing bootloader on Void (For me)
date: "2021-02-14 07:43:00 -0600"
description: How to make Void Linux boot after a Windows update happens and kills everything. 
tags: linux tutorial
permalink: /blog/survive-windows-void/
redirect_from: /survive-windows-void/
layout: post
comments_id: 4
---

I am writing this more for me than for you, __this is by no means a full tutorial and you should not look for answers here__. I am just an average Linux user who is still forced to live With windows on the same SSD as the other. I am logging the way I fixed my issue because I got the solution from telegram and it is kinda difficult to go there everytime Windows is a bad neighbor.

By the way, I am using **UEFI**, so go somewhere else if you are using BIOS

# Booting from a Live USB 🛠

This is the obvious next step if you have dealt with this kinds of problems before, still I am typing it to make this at least a decent, ordered read. I am using an image with Void Linux XCFE, the first thing I did was go into the terminal and become root. I accomplished it by using `su` and typing the password, which in Void is `voidlinux`

## Mount your Linux partition

After doing that you have to mount your partition, firs run `lsblk` or `fdisk -l` and look for the partition that contains Linux in it. In my case, that partition is usually `/dev/sdX5` where X is usually `a` or `b` depending on my boot order and that kind of stuff. So, to mount it in the `/mnt` folder, I do:

```bash
mount /dev/sdX5 /mnt
```

## Mount EFI Partition

After that, I need to mount the partition that contains the EFI System, in this case, that partition is usually `/dev/sdX2`. **It is important to always check `lsblk` though, just in case something you had deleted some partition or renamed something.**

```bash
mount /dev/sdX2 /mnt/boot/efi
```


### Run this weird command

I have to do a couple of commands, first of all:

```bash
for i in dev sys run proc; do mount -v --rbind /$i /mnt/$i; done
```

I am not exactly sure of what happens exactly, but if you try to do the  next steps, you will end up failing to install GRUB or rEFInd because they cannot see the folder where the EFI System is (or something like that, I am not sure).
Now we are ready to chroot and do the final step.

# Chrooting into your Linux system

Now you execute this command:

```bash
chroot /mnt
```

Now your interface might not change at all, but by doing `ls`, or running a command not available in the Live USB, like `neofetch`, you can know that you are inside of your Linux, and access all of those folders and programs.

Do a quick  `ls /boot/efi` and check if the folders there match with your system (there is usually a `void-grub` folder or something like that).

## Fix GRUB

Now that you know everything is where it should, it is time to install grub once again. **Reminder: this guide is more for personal use than anything, there might be some utilities like `grub-prober` or whatever that I already had installed and you don't, nonetheless if thats the case, following this guide should fail without doing any major harm.** Run:

```bash
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB --recheck
```

Remember that all this time, you were chrooted in `/mnt` which is your SSD's root partition.


## Using rEFInd instead 🛑

I have followed these steps many times, and I always install grub, however, after booting I end up doing `refind-install` to get rEFInd back, I believe that I could just run it on the Live Environment, I just always end up forgetting about it.

# Reboot, and check whats is up 🔃

This method has not failed *me* up until the couple of times I have had to check telegram to remember these commands. I remind you that **this might not work for you** but if nothing else did, ~~you can always give it a try.~~

In my case, I am typing this from Linux, so I survived, and I hope you do too.
# Finishing thoughts 💭

So yeah, Windows ends up being terrible with its updates, I really needed to do this little guide once and for all. I hope it helped you or at least entertained you or I have no idea of why you would be reading a guide about something that still has not happened to you.

Anyways. this was my 10th blog for [#100DaystoOffload](https://100daystooffload.com), I it serves you well, since it did **for me.**

















 



{% include reply.html %}
