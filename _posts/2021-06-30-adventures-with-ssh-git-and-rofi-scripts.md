---
title: Adventures with ssh, git and rofi scripts
header: Adventures with ssh, git and rofi scripts
description: Playing with SSH and Git and some fixes I added to my rofi post making script
summary: Playing with SSH and Git and some fixes I added to my rofi post making script
tags: coding linux blog tilde git
permalink: /blog/adventures-ssh-git-rofi-script/
layout: post
date: 2021-07-01 07:54:58 -0500
host: fosstodon.org
username: joeligj12
com_id: a
---

This day has been kinda tiresome, but also quite successful, I learned a ton of stuff, and I am happy for it.

The terminal is a place that I have enjoyed for months now, and I really like being on it. But there were a lot of things that I didn't really do on a terminal, simply because I was already used to other ways. Like downloading files, or transferring it from a computer to my phone. 

Since I joined a tilde, a public UNIX server that is accessed via ssh, I had to learn a few more things, or do them in different ways.

# Getting familiar with ssh

I had been using ssh with my website's git repo for a while now, in fact, I have my local repos all connected to GitHub via ssh, and I had had no problems with it. However, when I created my tilde account, I got access to tildegit.org, and I decided to give it a try!

Tildegit is a Gitea instance, and its pretty good. It allows me to export my GH repos with ease (at least the public ones), and I am considering to make it my primary Git service. But right now, I would like to keep both. But how am I supposed to do so? There is a "This repo is a mirror" checkmark, but I decided to make the sync from my local repo. 

I read this [gist](https://gist.github.com/rvl/c3f156e117e22a25f242) guide and set up my git to push to both services, I also learned about the ssh config file, from [this blog](https://friendo.monster/log/ssh_config.html) by Drew, so I setup my ssh config for something like this:

```
Host cafe
    Hostname tilde.cafe
    User chrono
    Identityfile ~/.ssh/cafe
    PubkeyAuthentication yes

Host tildegit
    Hostname tildegit.org
    Identityfile ~/.ssh/tildegit
    User git
    PubkeyAuthentication yes

Host github
    Hostname github.com
    Identityfile ~/.ssh/id_ed25519
    User git
    PubkeyAuthentication yes
```

So, as far as I knew, everything should have worked, *except it didn't*, the Tildegit ssh connection did not work. I could go on and on, but the trick was simple.

Running `ssh -vT git@tildegit.org` did not work, that command does some tests to try and login to the server, but its output was 

```
git@tildegit.org: Permission denied (publickey).
```

Why wasn't it picking up my tildegit key? I don't know, but my repo's git config had this:

```
# repo/.git/config
...
[remote "origin"]
	url = git@github.com:joelchrono12/joelchrono12.ml.git
	fetch = +refs/heads/*:refs/remotes/origin/*
	pushurl = git@tildegit.org:chrono/joelchrono12.ml.git
	pushurl = git@github.com:joelchrono12/joelchrono12.ml.git
...
```

So I tried something. My ~/ssh/config file names the `Host` as `tildegit` and nothing else. So I decided to run `ssh -vT tildegit`, and after ~~typing my passphrase~~ autotyping  my passphrase with `rofi-pass`, this was the output.

```
Hi there, chrono! You've successfully authenticated with the key named tilde.cafe, but Gitea does not provide shell access.
```

And so, after countless useless commits and failed pushes, I got it, I just changed the pushurl to `tildegit:username/repo` and it all worked out fine! I did the same for GH.

## Using ssh-agent

Its worth noting that all this time, I knew I could use the `ssh-agent`, but I didn't really feel like it. I don't think its bad, but for some reason it does not autostart on my system and while it would probably be easy to set it up, I use `pass` to store my passwords, and I decided to just use that and autotype it every time.

# Some script fixing

Now, in my previous blog I mentioned that I started using [Blop](https://gitlab.com/uoou/blop) to produce a simple, more minimal mirror of this website on my tilde [here](https://chrono.tilde.cafe). However, the script uses `sed` to change a bunch of stuff, and after reading it, I found a few things I could apply to my current rofi scripts, so I renewed it and made it better, I also removed some blank spaces that were getting added and caused some weird behavior, like having my HTML end with a dash like `this-file-.html` and other things.

Now it looks like this!
```
#! /bin/bash
path=/home/joelchrono12/git/joelchrono12.ml/_posts/
title=$(rofi -l 0 -width 50 -p "Title:" -dmenu)
filen=$(echo $title | tr " ,.!" "-"| awk '{print tolower($0)}')
if [ -z $title ]; then
	exit
fi
today=$(date +"%Y-%m-%d")
filename=($today-$filen)
description=$(rofi -l 0 -width 60 -height 20 -p "Description:" -dmenu)
tags=$(rofi -l 0 -width 45 -p "Tags:" -dmenu)
num=0
while [ $num = 0 ]; do
	choice=$(echo -e "Edit file\nEdit title\nEdit description\nEdit tags\nCancel" | rofi -width 15 -l 5-p "Now?:" -dmenu)

	if [[ $choice = "Edit file" ]]; then
  	touch $path/$filename.md
  	echo -e "---\ntitle: $title\nheader: $title\ndescription: $description\ntags: $tags\npermalink: /blog/$filen/\nlayout: post\ndate: $today $(date +"%T") -0500\n">> $path/$filename.md
		num=1
		alacritty -e nvim $path/$filename.md & disown
        #cp $path/$filename.md ~/Documents
	elif [[ $choice = "Edit title" ]]; then
		title=$(rofi -l 0 -width 50 -p "Title:" -dmenu)
	elif [[ $choice = "Edit description" ]]; then
		description=$(rofi -l 0 -width 60 -height 20 -p "Description:" -dmenu)
	elif [[ $choice = "Edit tags" ]]; then
		tags=$(rofi -l 0 -width 45 -p "Tags:" -dmenu)
	else
		num=1
	fi
done
```

# The end

Remember all of the metadata is adapted to work with Jekyll, but it is easy to edit the script for whatever you need. I am using `sed` and `tr` to remove commas and dots from the filename, and to add dashes instead of spaces, it will duplicate some dashes sometimes, but that's fine. In the end I managed to learn a bit more about how computers work and stuff like that. 

Also, I am almost done with school, I did a couple more icons for the Arcticons icon pack, and I should be cleaning up my room today, I have visits soon and its quite a mess!

This is day 47 of [#100DaysToOffload](https://100DaysToOffload.com)
