---
title: Storing GPG keys on KWallet
header: Storing GPG keys on KWallet
description: For some reason, KDE Plasma on Fedora does not store my GPG keys into KWallet, but it turns out that the fix is not as difficult as I thought
tags: linux short
permalink: /blog/store-gpg-keys-kwallet/
layout: post
date: 2022-06-16 20:53:51 -0500
host: benign.town
username: joel
com_id: 108490439197835241
---

One of the things that one does not think about as a regular Linux user is the management of secrets and passwords. Where do our Wifi passwords go? What's up with the one I used to login?

I have no idea, but on GNOME and most GTK based desktop, this little program known as [Seahorse](https://wiki.gnome.org/Apps/Seahorse) manages all of that, so you don't have to type your login password every 30 seconds or whatever terrible scenario would actually happen if stuff like this didn't exist.

Regardless. KWallet is the tool used in KDE Plasma for the same thing, but for some reason it did not store GPG keys.

Now then. when using a key to encrypt, decrypt or sign something you usually get asked to input your password via a Pinentry program. In KDE Plasma the default one is `pinentry-qt`, while on GTK its `pinentry-gtk`, but it might depend on your distro. The problem is, since I use [pass](https://passwordstore.org) to manage my passwords, I need to input my gpg passphrase everytime I need to fetch a password, which is very troublesome when you have cronjobs that notify you of new emails or update your calendar events.

I noticed that there was no "Remember password" option showing up in my pinentry. But I ended up on a [KDE forum post](https://forum.kde.org/viewtopic.php?f=215&t=168360) that had the same problem, which pretty much worked for me and fixed all my problems!

So all you need to do is change the pinentry to on the gpg-agent.conf file to "pinentry-kwallet" which can be installed from the package "kwalletcli"

```
pinentry-program /usr/bin/pinentry-kwallet
```

In my case I think I gave it permission to simply unlock after login, which is not ideal since I don't have to input my gpg password ever again. I should probably change that but I already invested quite a bit of time into fixing this little detail, we'll see.
