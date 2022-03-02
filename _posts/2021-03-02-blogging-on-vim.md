---

title: Writing a blog from the terminal 
header: Writing a blog from the terminal
date: "2021-03-02 18:35:00 -0600"
tags: foss linux vim
description: "I have decided to try and write a blog on Nvim, it is quite easy until it is not, but I will get used to it"
permalink: /blog/blogging-from-terminal/
layout: post
com_id: 105823323477857806
host: fosstodon.org
username: joeligj12
---

So, up until now I have been using [Typora](https://typora.io/), a markdown text editor that I decided to use, mainly because of the spell checking capabilities that it offers.

Most other editors, like [Gedit](https://wiki.gnome.org/Apps/Gedit), which is the GUI editor I use for most simple things, doesn't really offer any way to check for errors, and even though I try to type correctly, sometimes I just miss a letter, or an accent (Especially because I do most of my homework and note taking in Spanish, English is too easy in comparison).

So anyways, I have decided to try and do this blog using Neovim and only that, with the help of a few external programs to help me deal with the caveats that using  terminal editor brings.

# Some plugins and external programs later...

I installed a few plugins that I saw in some videos, such as [Goyo](https://github.com/junegunn/goyo.vim) and [Limelight](https://github.com/junegunn/limelight.vim), that are supposed to help focus on typing and only that (I am struggling to get Limelight to work with the Nord color scheme, I will sort it out later). But I have seen a few others that can do more powerful stuff, like prettifying tables made with pipes and such, as well as automatically hiding markdown elements like `*italics*` and `__boldness__`, as well as `[hyperlinks](https://{{ site.url }})`. But I am currently seeing all of this pretty clearly.

Also, I found a pretty epic terminal utility called [Aspell](http://aspell.net/), which is quite a life-saver, since, as its name implies, it is pretty useful to check for mistakes and errors in this text.

All I have to do is install the right [dictionaries](https://ftp.gnu.org/gnu/aspell/dict/en/), and run the following command:

```
$ aspell -l en_US --mode markdown -c file.md
```
And that will look for mistakes and correct them in case there are any, as you can see in this screenshot:

![Aspell doing its work](/assets/img/blogs/2021-03-02-aspell.webp "I made those mistakes just to show them, nothing more!")


To be honest, I just wanted to have something to type right now. Since I have been a little busy with University and was struggling to keep up with my blog.

Now I am going to share a little screenshot of how this setup looks, because why not?

![Vim setup to write this blog](/assets/img/blogs/2021-03-02-nvim-to-write.webp "Is this some kind of blogception???")

So, yeah this was not that hard to do, there are still some things I have to figure out, luckily, most of these tools will also be useful for my [homework workflow](/blog/doing-school-work/) so, that's a win for me! This has been day 21 of [#100DaystoOffload](https://100daystooffload.com)
