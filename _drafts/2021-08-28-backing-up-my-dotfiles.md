---
title: Backing up my dotfiles with Stow
header: Backing up my dotfiles
description: Using stow, trying Emacs once again, giving org-mode a try, meanwhile, School is not going that well
tags: linux foss vim emacs gnu tutorial
permalink: /blog/backing-up-my-dotfiles/
layout: post
date: 2021-08-28 22:17:03 -0500
host: fosstodon.org
username: joeligj12
com_id: idcomments
---

Managing dotfiles has always been quite a nightmare for me. But thankfully, I never really had a reason to do it that often. When I moved from Void Linux to Endeavour OS, all I did was `tar` my whole config file and just extracted the files I wanted once the new distro was installed. 

But, while that worked, it was not the best way to backup changes I do as time goes on, unless I archived everything constantly.

I had seen many different ways to backup dotfiles and also share them with people who might be interested in it. That's where Git and GNU Stow come in. 

Git is already known by programmers, since its used to keep track of file changes and back them up in remote repository services like GitHub or Gitea. It also allows to do work in colaboration with others. Everyone has their own clone of a repository and commit changes, merge them and work together in a project.

Stow describes itself as a symlink farm manager, It will create a series of symlinks following a folder structure chosen by you. I don't really know how to explain it, but I will show you the steps to backup your current config files now

## Moving current configs to the stow directory

Lets say we want to backup `picom`, you probably can do it all at once, but I would rather backup the configs I actually need instead of having my Discord or nautilus files that are unnecesary to me.

Anyways, the first step is to create a `dotfiles` directory, somewhere to put your configs, I did it in my home directory. You also have to create a folder structure, depending on where you want the config to be stored

If you want to add a README file or other stuff that you don't want to be setup with Stow, you can create another directory, in my case, I have made `stow_home`, inside of the `dotfiles` folder.


Now, lets take `picom` as an example. Picom has its config in `~/.config/picom/picom.conf`, so, inside of the new `home_stow` directory, we recreate that folder structure, but using the the program name instead of the tilde, so:

```
                              # ~
$ mkdir -p ~/dotfiles/home_stow/picom/.config/picom/
```

You dont really need to type the last `picom` if you don't want to, I just did it to explain it a bit better visually, the next step would be to move your current picom config directory to the dotfiles folder.

```
$ mv ~/.config/picom/ ~/dotfiles/home_stow/picom/.config/
```

Once you do that, your picom folder is no longer in the `.config` directory, but inside of the `dotfiles/home_stow`, following the same folder structure, as if `home_stow` was the `/home` directory, followed by the user `picom` and the path to the picom configuration files.

You can repeat this process with all of the files and directories you want. Once you are done, there is a last step to make. Running this command.

```
$ cd ~/dotfiles/stow_home
$ stow -vt ~ *
```

This will symlink everything inside `stow_home`, targetting `~` as the starting point. The `-v` will let you know of everything being done, so you should see someting like this, depending on the programs you backed up:

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

# Backing it up on a git server

Now. This just takes care of dotile management, in order to back it up somewhere else an share it with people, you can got to the `dotfiles` folder, and run `git init`, this will create a local git folder, and you can use anything, like Gitea or Github to back it up. There are dozens of tutorials about `git` so its up to you to figure it out. 

You should read the manual of GNU Stow to know a lot more than what I mentioned here, like unlinking and other flags you can use.

If you feel like a step is not clear enough, please let me know in the comments or via e-mail.

