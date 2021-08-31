---
title: Backing up my dotfiles, literate programming
header: Backing up my dotfiles, literate programming
description: I finally figured out a nice way to backup my config files, and I decided to upload mine once and for all. 
tags: linux foss vim emacs gnu tutorial
permalink: /blog/backing-up-my-dotfiles/
layout: post
date: 2021-08-28 22:17:03 -0500
host: fosstodon.org
username: joeligj12
com_id: idcomments
---

Managing dotfiles has always been quite a nightmare for me. But thankfully, I never really had a reason to do it that often. When I moved from Void Linux to Endeavor OS, all I did was `tar` my whole config file and just extracted the files I wanted once the new distro was installed. 

But, while that worked, it was not the best way to backup changes I did as time goes on, unless I archived everything constantly.

I had seen many different ways to backup dotfiles, git bare repos, [yadm](https://yadm.io), symlinking scripts, and of course, GNU Stow.

All of these methods have their up and downs, but in the end, I decided to give `stow` a try. According to their [home page](https://www.gnu.org/software/stow/):

> GNU Stow is a symlink farm manager which takes distinct packages of software and/or data located in separate directories on the filesystem, and makes them appear to be installed in the same place.

Stow creates a series of symlinks following a folder structure chosen by you. I don't really know how to properly explain it, but I will show you the steps to backup your current config files, and I hope you get the gist of it on your own.

# Using Stow to backup your configuration

Lets say we want to backup our `picom` configurations, yes, we *could* backup the whole `.config` folder at once, but I believe its better to backup the files of the programs you *actually* need instead of wasting space on programs unnecessary to your workflow, or that you don't wanna share in a publicly (if that's what you want to do).

The first step is to create a new directory to use as a base (and as a git repository, if you so choose). For the purpose of this tutorial, we'll name it`dotfiles`, and place it in the home directory. You also have to create a folder structure, depending on where you want the configuration to be stored, this depends on the location the program will read its configuration from.

If you want to add a `README` file or other stuff that you don't want to be setup with Stow, you can create another directory inside of `dotfiles`, in my case, I have made a `stow_home` folder, which will where we will actually run the `stow` command. [^1]

Picom expects its config file in `~/.config/picom/picom.conf`, so, inside of the new `home_stow` directory, we recreate that folder structure, but using the program name (`picom`) instead of the tilde (`~`), that usually refers to the home folder. [^2]

Lets put all of this together in the terminal.

```
$ mkdir dotfiles && cd dotfiles
$ git init
$ touch README.md other_file.txt
$ mkdir -p ~/dotfiles/stow_home/picom/.config/picom/
$ mv ~/.config/picom/ ~/dotfiles/stow_home/picom/.config/
```

Once you do that, your picom folder is no longer in the `.config` directory, but inside of the `dotfiles/home_stow`, following the same folder structure, as if `home_stow` was the `/home` directory, followed by the user `picom` and the path to the picom configuration files.

Now we repeat this process with all of the files and directories we want to back up. Once done, the behavior of the programs you use, such as `vim`, should revert to their default configurations, since the user config files are no longer there. So, **now its time to fix that!**

```
$ cd ~/dotfiles/stow_home
$ stow -vt ~ *
```

This will symlink **everything** inside of `stow_home` [^3], targetting `~` as the starting point. The `-v` will let you know of everything being done, so you should see something like this, depending on the programs you backed up:

```
$ stow -vt ~ *
LINK: .config/alacritty/alacritty.yml => ../../dotfiles/stow_home/alacritty/.config/alacritty/alacritty.yml
LINK: .config/awesome => ../dotfiles/stow_home/awesome/.config/awesome
LINK: .config/bat => ../dotfiles/stow_home/bat/.config/bat
LINK: .config/dunst => ../dotfiles/stow_home/dunst/.config/dunst
LINK: .config/nvim => ../dotfiles/stow_home/nvim/.config/nvim
LINK: .config/picom => ../dotfiles/stow_home/picom/.config/picom
LINK: .config/rofi => ../dotfiles/stow_home/rofi/.config/rofi
LINK: .config/spectrwm => ../dotfiles/stow_home/spectrwm/.config/spectrwm
```

# File versioning with git

Now. This just takes care of dotile management, in order to back it up somewhere else an share it with people, you can go up to the `dotfiles` folder, and run `git init`, this will create a local git folder, and you can use anything, like [SourceHut](https://sourcehut.org) or [GitHub](https://github.com) to back it up. Here is a terminal guide, but you should find more about this somewhere else:

```
$ cd ~/dotfiles
$ git init
$ git add *
$ git commit -m "Added config files"
$ git push
```

The last command will not work if you don't have an external repository from GitHub, but that's a tutorial for another time.

The manual of GNU Stow contains a lot more than what I mentioned here, like unlinking and other flags that can be used and might be useful for your use case.

Anyways, that's all folks, this has been day 53 of [#100DaysToOffload](https://100DaysToOffload.com)

If you feel like a step is not clear enough, please let me know in the comments or via e-mail.

[^1]: You can just use dotfiles as is without a folder inside it, but if you want to be able to quickly deploy everything using `*`, you must make a folder where README and other files you don't want to symlink won't interfere .
[^2]: Other files, like `.bashrc`, are not in the `.config` folder, keep in mind that the path to use depends on where the program needs it to be. In this case, it would have to be placed in `~/dotfiles/stow_home/bash/.bashrc`.
[^3]: If you are unsure about the paths you created, you can run the -n flag to *simulate* the output and see exactly where each symlink *would be* placed. That way you dont end up symlinking in the wrong place and doing weird stuff to your filesystem.
