---
title: I made a rofi script to automate this blog 
header: I made a rofi script to automate this blog 
description: I already did something like this, but now I used rofi, and its a lot more epic! 
tags: foss linux programming 
permalink: /blog/rofi-automated-blog/ 
layout: post 
date: "2021-03-14 19:33:26 -0600" 
com_id: 105891498745925801
username: joeligj12
host: fosstodon.org
--- 

Oh yeah! Automation in Linux is not stopping! As you read in the title, I have decided to keep working on my [previous script](/blog/making-a-script-to-blog)!, where I wanted to get rid of the hassle of setting up all of the metadata and placement of making new posts for this website.

The previous script was working great, but it had a few problems that I really did not like.
- I needed to run it from the terminal (or to execute a terminal first then run it)
- I had to input all of the metadata in their place. So some more inputs needed to be made
- ~~I actually forgot to put it in the $PATH or keybinding it, so I had to type the direction~~
- Yeah that's pretty much it

So, I had to get working on something quicker and better. I decided to use Rofi, a pretty epic application launcher that can be scripted, fairly similar to Dmenu, since it even includes a Dmenu mode out of the box!

# Using rofi to input everything! ⌨

I started with the previous script as a base, but honestly it barely resembles it anymore. All I had to do is create variables and set them to rofi, similar to this.

```
variable=$(rofi -dmenu) 
```

Of course, I used some flags to make it all look better, but honestly, it was super easy to store those vars. It even allowed me to make files without the need of dashes (which was a requirement on the previous script, since `read` doesn't work with spaces that easily, but you can use "" if you so wish, I didn't wish that).

# Using rofi to make menus! 🗒

Anyways, I had to make this for the filename, title, description and tags. I took care of the date using the same command as the previous script. But I wanted to make this one a little bit more usable. What if I messed up one of those strings? do I just edit them once I am on Neovim? Of course not! I wanted a final menu that let me edit those variables or proceed to the editing, as well as cancel everything if I changed my opinion!

So, I had to make some `if` statements!, I am not a total noob when it comes to programming, so I only had to get used to the syntax used by bash to get this going. 

First, I had to make a rofi menu, to do that, it was as simple as piping an echo of the options into rofi, like this:

```
choice=$(echo -e "Edit file\nEdit title\nEdit description\nEdit tags\nCancel" | rofi -p "Now?:" -dmenu)
```
That would output a pretty nice looking interface!:

![Rofi menu showing the options](/assets/img/blogs/2021-03-14-rofi.webp)

# Making sure the script doesn't break 🔧

I faced quite a lot of errors that I eventually managed to fix.I am using a `while` to stay inside of that last menu until I select edit the file. But I of course forgot to add a final `else` in case I choose to cancel the operation. This meant that I was completely unable to leave Rofi, so I had to go into the TTY and kill the session, kind of a mess.

Also, there was a bit of an annoyance when I called the script, since I could only cancel it until the menu appeared, and if I did the keybinding by mistake, I would have to press ESC 4 times in order to exit. So I decided to check if the first input (the title) was empty. I could have done it for the rest, but its enough as is...

# The kinda final script 📜

So, this is the final script! I am very proud of getting a bit better at automating the simple things. I am pretty happy with this. 

```
#! /bin/bash 
path=/path/to/blogposts
name=$(rofi -l 0 -width 40 -p "Filename (ESC to quit):" -dmenu)
if [ -z $name ]; then
	exit
fi
today=$(date +"%Y-%m-%d")
filename=($today-$name)
title=$(rofi -l 0 -width 50 -p "Title:" -dmenu)
description=$(rofi -l 0 -width 60 -height 20 -p "Description:" -dmenu)
tags=$(rofi -l 0 -width 45 -p "Tags:" -dmenu)
num=0
while [ $num = 0 ]; do
	choice=$(echo -e "Edit file\nEdit title\nEdit description\nEdit tags\nCancel" | rofi -width 15 -l 5-p "Now?:" -dmenu)

	if [[ $choice = "Edit file" ]]; then
  	touch $path/$filename.md
  	echo -e "---\ntitle: $title \nheader: $title \ndescription: $description \ntags: $tags \npermalink: /blog/$name/ \nlayout: post \ndate: \"$today $(date +"%T") -0600\" \n--- ">> $path/$filename.md
		num=1
		alacritty -e nvim $path/$filename.md & disown
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

Now, the script might look a bit weird here because of the kinda broken CSS (working on it), so if you wanna take a better look at it, check [here](https://gist.github.com/ChronoTriggered/7d0f360b38192af03221573586f12c69)

This has been day 25 of [#100DaystoOffload](https://100DaystoOffload.com)





