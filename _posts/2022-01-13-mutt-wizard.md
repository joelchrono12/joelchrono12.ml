---
title: Mutt Wizard
header: Mutt Wizard
description: I finally went all in and decided to try using Neomutt, I went with Luke's Mutt Wizard, and I have a couple of things to say about it.
tags: review thoughts foss linux email 
permalink: /blog/mutt-wizard/
layout: post
date: 2022-01-13 20:14:47 -0600
host: fosstodon.org
username: joel
com_id: 107618694875944957
---

I don't know exactly what caused me to fall into this rabbit hole, I have been a fan of plain text encrypted email for a while already. I have used Thunderbird for almost a year now, and K-9 Mail too has been a great email client for my phone.

Funnily enough, I never got to talk about Thunderbird, but I have recommended it multiple times and you might have seen an email reply of mine, with my signature saying "Sent from Thunderbird" if you ever sent me an email.

I have tried some other terminal clients such as pure mutt, alpine and aerc, but I was not really convinced about any of them.

Regardless, I have decided to test Neomutt once and for all, and in order to make that as easy as possible for myself, I installed [mutt-wizard](https://muttwizard.com), a program created by [Luke Smith](https://lukesmith.xyz/) that helps you do it, with a nice default config, keybindings, password management with `pass` (which [I already use]({{ site.url }}/blog/pass-unix-manager/)) and I gotta admit, its pretty good! But I have some points I would like to explain, as well as the changes I had to do to deal with some things.

# Encryption problems

Passwords are stored with `pass`, that's not a problem for most people, but I am a bit finicky, `mw`, which is the program you call via the terminal, creates a new pass gpg entry, so I have duplicated things, and yeah I guess I don't like that. Thankfully it's a matter of changing the `msmtp` configuration file, which is used by the program of the same name which is a dependency to actually send the emails I write. it should have something like this:

```bash
account mail@example.org
# content
passwordeval "pass mail@example.org"
# other things

account mail2@example.com
# content
passwordeval "pass mail2@example.com"
# more content indeed
```

So I just have to change the values of the `passwordeval` of each account, which is not hard to do at all!

Another small detail I was unable to figure out is that I could not encrypt email to send and I also could not self-encrypt it, so once I managed to send one, I was unable to open it.

To fix that, I had to ultimately trust the public keys I tried, I think I could do full trust instead, but I don't really understand why I can't just have the keys as they are, I guess its just Neomutt being finicky.

In order to self encrypt email, it looks like there is no real way to adjust that with Neomutt, there is this `set pgp_self_encrypt = yes` option but it looks like it no longer works, and most variables start with `set crypt_*`, so maybe it gets re-implemented one day.

I also added these lines to the config file in `~/.config/mutt/muttrc`

```bash
set crypt_opportunistic_encrypt = yes
set crypt_replysign = yes
```

There are some other settings and I don't actually get how the ones I've enabled work, but well, encryption works, I just have to trust the keys of people I encrypt messages to.

# Email management problems

I had created a few nested folders using Thunderbird, but none of them seemed to work properly. I could probably have made them work but I didn't want to bother trying, some of those folders were not important or I just moved them to the "root" directory instead of having it under the Inbox. 

I had to remove my account and set it up again, but it worked just fine.

Another thing I wanted to fix was setting up Neomutt as default XDG email app, so I could open `mailto` links with it. 

Editing the Neomutt desktop file was necessary, I changed the Exec line to `alacritty -e neomutt %u`. It all looks like this:

```bash
[Desktop Entry]
Categories=Office;Network;Email;
Comment=Simple text-based Mail User Agent
Comment[de]=Einfaches, Text-basiertes Mailprogramm
Exec=alacritty -e neomutt %u
Icon=neomutt
Name=neomutt
Name[de]=Mutt
MimeType=x-scheme-handler/mailto;
NoDisplay=false
# Terminal=true
Type=Application
```

So far, happy with it, I still have some keybindings to learn, but it worked out just fine.

# Mailing lists and formatting

I really like mailing lists, although I kinda hate the archaic interfaces of some web archives (if you know some good looking ones other than source hut's, let me know *via email*).

This is another thing that I struggled a bit to understand, but only because I could not find the Reply All keybinding, once I did, it worked out alright.

Another detail was that K-9 was displaying emails wrong, but that's because the `format_flowed` option was not set, once I did that, everything turned out fine.

## A small Neovim configuration

I created a simple config file specific for email writing and formatting, located at `~/.config/nvim/ftplugin/mail.vim`, so I am also sharing it here. I just works. Notice the color set for comments, since quotes were hard to read with the Nord color scheme, so yeah I changed the color of them and its alright.

```vim
" ftplugin/mail.vim
setl tw=72
setl nojs
setl nosmartindent
setl noautoindent

" Flowed format
setl fo=watqj
set comments-=fb:-
setl list
set listchars=trail:•

highlight Comment ctermfg=green cterm=italic
```


# Wrapping up

I have to credit [Rinzewind](https://rinzewind.org/blog-en/) for helping out a lot, I found a blog of him talking about the mail formatting, sent an email to ask some questions and gave me a lot of tips and tricks to fix a lot of problems.

I have managed to adapt quite nicely. I still haven't moved all of my accounts yet, but if it all goes fine, maybe I will try. Quite promising.


This has been day 82 of [#100DaysToOffload](https://100daystooffload.com)
