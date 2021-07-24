---
title: I tried Pale Moon, but Firefox extensions are too good 
header: I tried Pale Moon, but Firefox extensions are too good 
description: I know that extensions can make you easier to track, but sometimes its worth it to me. Free script at the end of the blog!
tags: foss linux 
permalink: /blog/firefox-extension-bloat/ 
layout: post 
date: "2021-03-20 22:49:42 -0600"
com_id: 105925990212839674
host: fosstodon.org
username: joeligj12
--- 

Lately, I have been trying to stay away from Firefox a little bit more, I guess that the drama around it got to me and I decided to go out and look for alternatives. I am a huge fan of browsers like Vivaldi or Brave, and I don't really care about the problems that some people have with them, especially in the Linux and Open source community. 

However, I decided to try something I have never tried before, so I chose Pale Moon. Lets start with the first paragraph of its Wikipedia page:

> Pale Moon is an open-source web browser with an emphasis on customizability; its motto is "Your browser, Your way". There are official releases for Microsoft Windows and Linux, an unofficial build for macOS, and contributed builds for various platforms. Pale Moon is a fork of Firefox with substantial divergence. The main differences are the user interface, add-on support, and running in single-process mode. Pale Moon retains the highly customizable user interface of the Firefox version 4–28 era. It also continues to support some types of add-ons that are no longer supported by Firefox
 \- Wikipedia

The easiest way to explain it, is that Pale Moon is a fork of Firefox before the change to Quantum, therefore it lacks many of the modern extensions and features that later versions have, but at the same time, it keeps some of the old ones and offers an interesting way to view the web.

I really liked the way this browser works. It is portable and can be run from anywhere. Although it might be in some repositories, it is not in Void's, therefore I used the portable binary and made a keybinding to it.

Honestly, it looks pretty terrible out of the box, at least with the Nordic GTK theme.

![Pale moon's website open in said browser](/assets/img/blogs/2021-03-20-pm-site.webp)

While pretty customizable, the fact that some websites did not show up nicely, and sites like YouTube, LBRY and Google Meet barely worked (or did not at all) made me unable to use it as my primary browser.

However there was something I really missed: extensions. I might be quite spoiled but I really realized how important they are to me. So, while I wanted to share my experience with Pale Moon, I think I would rather share some of the extensions I cant live without and that Pale Moon lacked.

* [Dark Reader](https://darkreader.org/): This is a classic one, this plugin displays any website with a pretty beautiful dark interface (unless it doesn't). And its simply the best at what it does. Pale Moon lacked Dark Reader and did not provide any alternatives as far as I found
* [ff2mpv](https://github.com/woodruffw/ff2mpv): The kinda weird name still explains it pretty well, this extension can open YouTube (and other videos) on MPV with a single click, I use this quite a lot, and it would have been pretty handy on Pale Moon, but sadly I didn't manage to find anything similar there.
* [BibItNow!](https://addons.mozilla.org/en-US/firefox/addon/bibitnow/?utm_source=addons.mozilla.org&utm_medium=referral&utm_content=search): This one is just **amazing**, this plugin can cite *almost* any website in any format you wish, be it APA, Chicago, MLA and most importantly, Bibtex!. This has been pretty helpful for my Markdown + Pandoc workflow since I just copy paste this to my bib file and cite it pretty easily.
* [KDEConnect](https://addons.mozilla.org/en-US/firefox/addon/kde_connect/): Don't mistake this with the GNOME Extension, this makes one thing and does it pretty well. It can share the current website to any KDEConnected device. It is so useful whenever I use it, even if it's just once in a while.
* [Bitwarden](https://bitwarden.com/): Yeah this is my password manager of choice, I love it, I use it, you should too, unless you use Keepass, and if you do you should feel proud since you are superior to me. I will probably talk about this later.

# I am sorry Pale Moon, maybe after school is over

So, as you might assume, I left out some obvious extensions like UBlock Origin or Firefox Containers (And if they are not obvious to you, just install them without hesitation).

While Pale Moon is kinda cool and it feels nice to be so different and unique, it ain't worth it for me to do the change because of the lack of plugins, and also the fact that *my website doesn't display properly in it, so that's not good*.

Anyways, this was day 26 of [#100DaystoOffload](https://100DaystoOffload.com). I hope that you learned something from this! And if you did not, take this pretty epic alias to edit your latest blog post when you messed it up!

```bash
# Assuming your files have the format year-month-day-filename.md
# Also change ur editor if you so wish
alias vb='cd ~/path/to/blogs && nvim $(ls -a | sort -r | head -n 1)'
```
