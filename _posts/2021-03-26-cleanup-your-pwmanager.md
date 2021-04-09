---
title: Don't just switch your password manager, clean it up too! 
header: Don't just switch your password manager, clean it up too! 
description: After LastPass messed up big time, a lot of people changed to a different password manager, but after that, maybe it's time to get rid of old accounts too.  
tags: foss tutorial linux privacy 
permalink: /blog/cleanup-your-pwmanager/ 
layout: post 
date: "2021-03-26 18:59:30 -0600" 
com_id: 105959292261665856
host: fosstodon.org
username: joeligj12
--- 

I am pretty sure that most people reading this are aware of the changes LastPass did to their free-tier customers. A lot of articles already talked about that, and some might be in the process of switching to a different service, to host their own or to use an offline solution. 

I have been an huge fan of [Bitwarden](https://bitwarden.com/), which Wikipedia page states:

> Bitwarden is a free and open-source password management service that stores sensitive information such as website credentials in an encrypted vault. The Bitwarden platform offers a variety of client applications including a web interface, desktop applications, browser extensions, mobile apps, and a CLI. Bitwarden offers a cloud-hosted service as well as the ability to deploy the solution on-premises.

Not only it offers a pretty great free option, it completely decimates most of the competition besides LP when it comes to security, privacy and transparency. 

I can only think of a couple of options when that can be better. [Pass](https://www.passwordstore.org/), a pretty minimal option that follows the UNIX philosophy (and might be a bit too extreme), and [KeepassXC](https://keepassxc.org/).
I chose the latter, and to be honest, I am quite happy with the results. Bitwarden allowed me to export my database as a .csv file, and importing it to my .kdbx (not to be confused with [xkcd](https://xkcd.com/)) database.

But honestly, I am not here to tell you which password manager to use, if you are switching to a new one, or if you just have some time. **you should do some house keeping**.

# 🔑 Get rid of weak passwords 

One of the features Bitwarden locks behind a paywall, is the ability to look for **duplicated passwords**. I was aware of the existence of multiple accounts sharing the same passwords. Back when I switched to Bitwarden, I was using my browser's built-in autofill feature (don't do that please), but I still used the same password *everywhere*. And I had been living with that for years. 

You are probably doing that too for some of your accounts, I suggest you to do yourself a favor and change those passwords as soon as you can. Thankfully, KeepassXC can show me duplicated passwords, and if you are self-hosting or paying for Bitwarden, you can have that functionality for free too.

There is something **important** to keep in mind. If you come from LastPass (or any other proprietary manager), you should consider **changing all of your passwords**. You really have no idea of what they are doing behind the curtains. For all you know, they might release all of your information to the Web the moment you stopped using their service (or even if you still are).

# 💀 Get rid of your old accounts 

Funnily enough, the moment I started going through all of those accounts with repeated passwords, I realized I had a bunch of accounts that were deactivated, breached or were from a dead website/forum. 

I have been deleting accounts I don't need, changing the passwords of those I have to keep, and requesting the deletion of some that don't offer any way to delete them myself. So far, **my recycle bin contains 64 accounts** and counting, which will get automatically deleted after a certain time (quite handy if I require to get some back).

# ✨ Enjoy a cleaner, private and epic setup

Maybe you have heard of **Inbox Zero**, the digital minimalism practice where you get rid of all of your old emails that you won't really read. Well I have never really done that. But I assure you that it **does not feel as great** as having a completely tidy and well organized database of passwords and accounts. 

This was not a matter of clicking a **"Delete All"** button or using some magic script, but the product of 4+ hours (in my case, your mileage may vary) of going through bloated menus, sending/replying emails, logging to multiple accounts, checking if they still exist, taking the time to debloat my database and have only the accounts I need in there.

# Wrapping up

I am quite happy with how everything turned out. I really can't encourage you enough to try and do this, even if you are already using KeepassXC or any other manager. This has been day 28 of [#100DaystoOffload](https://100DaystoOffload.com), I guess I should give this a hashtag huh?

Are you ready for a **\#PasswordDebloat** ?
