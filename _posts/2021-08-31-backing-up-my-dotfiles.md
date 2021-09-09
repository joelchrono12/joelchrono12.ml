---
title: Backup your dotfiles using stow
header: Backup your dotfiles using stow
description: I finally figured out a nice way to backup my config files, and I decided to upload mine once and for all. 
tags: linux foss vim tutorial dotfiles coding bash
permalink: /blog/backing-up-my-dotfiles/
layout: post
date: 2021-08-31 16:20:03 -0500
host: fosstodon.org
username: joeligj12
com_id: 106852970389013923
---

Managing dotfiles has always been quite annoying to me. But thankfully, I never really had a reason to do it too often. When [I moved from Void Linux to EndeavourOS](/blog/switching-distro-ending-school/), all I did was `tar` my whole `.config` and copied the file to an external drive. 

That works fine,  but it's not the best way to backup the constant changes I usually do to customize the way my programs look or act, and as a customization freak, that happens *quite often*.

I had seen many different ways to backup dotfiles: git bare repos, [yadm](https://yadm.io), symlinking scripts, and of course, GNU Stow.

All of these methods have their up and downs, but in the end, `stow` convinced me, and I decided to give it a try. According to their [home page](https://www.gnu.org/software/stow/):

> GNU Stow is a symlink farm manager which takes distinct packages of software and/or data located in separate directories on the filesystem, and makes them appear to be installed in the same place.

If you don't really understand it yet, don't worry, *I don't either!* But in this blog, I will do my best to show you the steps to backup your current config files, I hope whoever reads this finds it useful.

# Creating a dotfiles repository

The first step to backup your dotfiles, is to create an **empty** repository in some hosting service, such as [GitHub](https://github.com), [Codeberg](https://codeberg.org) or [SourceHut](https://sourcehut.org). This is optional if you only want to see how `stow` works, but necessary to have an external backup outside your computer. Once you are done, clone the empty repo to your home directory, or in any place you want. (This tutorial will be using the home directory).

To clone a repo, just do:

```
git clone https://site.com/link/to/repo
```

In my case, I use [Tildegit](https://tildegit.org), a Gitea instance, so my command looks like this.

```
git clone https://tildegit.org/chrono/dotfiles.git
```

You can clone my dotfiles if you want to use them, [here](https://tildegit.org/chrono/dotfiles.git) they are if you are interested.

# Using stow to backup your configuration

Before actually backing something up, we need to install `stow`, depending on your distribution, you can install it with your package manager of choice. In my case, Endeavor is based on Arch, so I do:

```
$ sudo pacman -S stow
```

Lets start by backing up the configuration of a single program. While we can backup our whole `.config` folder, that's **not** a good idea, since **some** programs store **important** information that *should* stay private, and I think its better to only backup what we have actually configured. For this example, I will backup my `picom` configurations.

The first step is to create a new directory to use as a base (if you cloned your empty repo, you'll be using that). You also have to create a folder structure, depending on where you want the configuration to be stored, this depends on the location the program will read its configuration from. We'll refer to this folder as `dotfiles`.

If you want to add a `README` file or other stuff that you is not a config files, you can create another directory inside of `dotfiles`, in my case, I have made a `stow_home` folder, which will be where we'll run the `stow` command. [^1]

Lets explain how `stow` works. Picom expects its config file in `~/.config/picom/picom.conf`, so, inside of the new `home_stow` directory, we recreate that folder structure, but using the program name (`picom`) instead of the tilde (`~`), which usually refers to the home folder. [^2]

Lets put all of this together in the terminal.

```
$ mkdir dotfiles && cd dotfiles # mkdir only if you didn't clone it
$ touch README.md other_file.txt # optional
$ mkdir -p ~/dotfiles/stow_home/picom/.config/picom/
$ mv ~/.config/picom/ ~/dotfiles/stow_home/picom/.config/
```

Once you do that, your picom folder is no longer in the `.config` directory, but inside of `dotfiles/home_stow`, following *the same folder structure*, as if `home_stow` was the `/home` directory, followed by the user `picom` and the path to the picom configuration files. [^4]

Now we repeat this process with all of the files and directories we want to back up. Once done, the behavior of the programs you use, such as `vim`, should revert to their default configurations, since the user config files are no longer there. So, **now its time to fix that!** Inside of `stow_home`, run the following command:

```
$ stow -vt ~ *
```

This will symlink **everything** inside of `stow_home` [^3], targetting `~` as the starting point. The `-v` flag will let you know of everything being done, so you should see an output like this, depending on the programs you backed up:

```
$ stow -vt ~ *
LINK: .config/awesome => ../dotfiles/stow_home/awesome/.config/awesome
LINK: .config/bat => ../dotfiles/stow_home/bat/.config/bat
LINK: .config/dunst => ../dotfiles/stow_home/dunst/.config/dunst
LINK: .config/nvim => ../dotfiles/stow_home/nvim/.config/nvim
LINK: .config/picom => ../dotfiles/stow_home/picom/.config/picom
LINK: .config/rofi => ../dotfiles/stow_home/rofi/.config/rofi
LINK: .config/spectrwm => ../dotfiles/stow_home/spectrwm/.config/spectrwm
```


# File versioning with git

If you stumbled upon this guide, you probably know the necesary `git` commands to backup everything to the service you chose at the beginning of this guide.

Generally, everytime you do changes you only need to follow these three commands, inside of your `dotfiles` folder.

```
$ git add *
$ git commit -m "Added config files"
$ git push
```

Remember that the last command will not work if you don't have an external repository.

The manual of GNU Stow contains a lot more than what I mentioned here, like unlinking and other flags that can be used and might be useful for your use case.

# Finishing up

Anyways, that's all folks, this has been day 54 of [#100DaysToOffload](https://100DaysToOffload.com), you can check out my dotfiles if you want to see how `stow` looks once setup, besides, my [Spectrwm configuration](/blog/spectrwm-setup) is quite sick if I do say so myself.

If you feel like a step is not clear enough, please let me know in the comments or via e-mail.

## Secret bonus script!

So, if you read until the end of this blog. I actually did a pretty decent bash script to automate everything here. 

All you need to do is configure it to your liking and run it like this

```
dotstow file_or_folder
```

The script is as follows, it uses basic tools like `cut` and of course, `stow`

```bash
#!/usr/bin/bash
# Dotstow - Backup your chosen dotfiles in one go using stow.
# Run it outside of the folder/file you want to back up
# $ dotstow file-or-program
# This program was made by joelchrono12

STOW_DIR=$HOME/dotfiles/stow_home
DIR=$(pwd | cut -d '/' -f4-)
NEW_DIR=$STOW_DIR/$1/$DIR
mkdir -pv $NEW_DIR
mv -v $1 $NEW_DIR
cd $STOW_DIR
stow -vt ~ $1
```

The program does not check if a folder already exists or anything like that. So feel free to send any suggestions and changes to it in a comment or using [git send-email](https://git-send-email.io/) to my email address.

---

[^1]: You can just use dotfiles as is without a folder inside it, but if you want to be able to quickly deploy everything using `*`, you must make a folder where README and other files you don't want to symlink won't interfere .
[^2]: Other files, like `.bashrc`, are not in the `.config` folder, keep in mind that the path to use depends on where the program needs it to be. In this case, it would have to be placed in `~/dotfiles/stow_home/bash/.bashrc`.
[^3]: If you are unsure about the paths you created, you can run the `-n` flag to *simulate* the output and see exactly where each symlink *would be* placed. That way you dont end up symlinking in the wrong place and doing weird stuff to your filesystem.
[^4]: You can also move specific files of a configuration folder. For example, `tut`, a mastodon client, saves the account data (passwords, etc) inside of another file in its configuration folder. if thats the case. You should move only the files you want, instead of the whole directory. `stow` should manage the rest.
