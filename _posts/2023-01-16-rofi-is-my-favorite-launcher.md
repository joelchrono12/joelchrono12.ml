---
title: Rofi is my favorite app launcher
header: Rofi is my favorite app launcher
description: You probably already know by now, because I've mentioned almost as many times as to have a tag just for it. You should use Rofi!
tags: bash coding linux foss ramble
permalink: /blog/rofi-is-my-favorite-launcher/
layout: post
date: 2023-01-16 13:15:00 -0600
host: fosstodon.org
username: joel
com_id: 109701458154272372
image: "/assets/img/blogs/2023-01-16-rofi.jpg"
---

Rofi describes itself as a *A window switcher, application launcher, ssh dialog, dmenu replacement and more*.

And that's pretty much it. Its super fast and minimal, and works pretty much anywhere. There is even a [Wayland clone of it](https://hg.sr.ht/~scoopta/wofi), which I don't use but at least its there.

Rofi is so good, I got really fired up when my fellow fedizen [@hyde](https://lazybear.social/hyde) mentioned how [rofi isn't for him](https://lazybea.rs/posts/rofi-not-for-me/), and he will stick to the default AwesomeWM launcher, I couldn't help myself, and decided to write this post and answer to his complaints.

First of all. This is all written in a jokeful manner, no hard feelings or anything.

*Seriously?* You use [pass](https://lazybea.rs/posts/passwords-and-websites/) as your password manager, you use [mutt for email](https://lazybea.rs/posts/dracula-and-mutt/), stuff like [fzf](https://lazybea.rs/posts/fzf/) and a bunch of other tools, you even got a weekly series of [CLI tool recommendations](https://lazybea.rs/tags/cli/). HOW DARE YOU disrespect rofi like THAT!?

Rofi can be integrated with pretty much all of the above. You can use tools such as [rofi-pass](https://github.com/carnager/rofi-pass) to autofill your passwords everywhere (kind of better than KeepassXC Browser extensions tbh). You could create many kinds of things with neomutt, like [handling mailto: links](https://beune.dev/posts/mailto-neomutt/)

You can pretty much pipe whatever you want on rofi, and create general scripts for a ton of stuff. Compared to some launchers that come built-in in some desktop environments or window managers. Rofi will work on them all and can be customized quite a lot.

The only thing that comes close to rofi is one of its inspirations, [dmenu](https://tools.suckless.org/dmenu/). But given that it is even more bare bones and any additions have to be patched (rather than simply configured with rofi). I find it a little harder to sell for most.

I have a few posts sharing scripts, some of them [using rofi](/blog/rofi-automated-blog/) and its simply __fantastic__. I've a couple other scripts you may be interested in checking out!

I actually recently changed the [script to edit tags](/blog/a-quick-tag-editor-for-my-website/) to use just rofi. You can see some it, as well as some more of my rofi scripts [in my dotfiles](https://tildegit.org/chrono/dotfiles/src/branch/main/stow_home/rofi/.config/rofi)


This is day 16 of [#100DaysToOffload](https://100daystooffload.com)
