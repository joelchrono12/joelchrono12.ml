---
title: Automating the creation of this blog
header: Automating the creation of this blog 
date: "2021-03-09 21:32:00 -0600" 
tags: linux coding tutorial vim
description: I tried to make a script to automate the creation of this blog, as a proper linux user should (kinda). And some blog CSS changes
permalink: /blog/making-a-script-to-blog/
layout: post
com_id: 105863415037120456
username: joeligj12
host: fosstodon.org
---
As the title said, I have been playing with some bash scripting since I was kinda bored. I was thinking about a blog made by [Kev](https://kevq.uk/the-wonderful-world-of-wordpress-wizardry-for-working-with-websites/), where he expressed how he moved away from Jekyll and back to WordPress. Now, I have never used WP, so I don't really know how many advantages, besides the mentioned in his blog, it has.

But that blog helped me to see, and recognize some of problems and annoyances I have with my current workflow.

Recently, I started to use Neovim to make my blogs, like the one you are reading right now. And since I am already trying to be as minimal as possible, I decided to make a script that helped me do the following things

1. Create a post file
2. Name it and add its date
3. Add the metadata to it
4. Open it to start editing

# Doing scripting stuff (Not a tutorial tbh) 

So, doing a script on linux is kinda easy, because of the way UNIX like systems work, I can make use of small utilities that can do small things and wrap everything together to make new useful scripts to automate the little things.
In my case, I made something like this.
```bash
#! /bin/bash
echo "Type filename"
read name
filename=$(date +"%Y-%m-%d"-$name)
touch /path/to/_posts/$filename.md
printf '%b\n' "$(cat /path/to/_template.md)" >> /path/to/_posts/$filename.md
alacritty -e nvim /path/to/_posts/$filename.md
```

## A quick explanation

* In this case, `echo` allows me to print text, just like `printf`, to keep the format of my `template.md` file, containing the metadata of the blog, sp I only have to fill it out (I could probably automate this too, honestly).

* I used `date` to create the and format the filename of the post, as well as add the given title using `read` (I cannot use spaces, but I always use dashes `-` anyways).

* I used `touch` to create the markdown file and place it in the right locations.

* Finally, I open the file on Neovim in a new terminal window (my choice is [alacritty](https://github.com/alacritty/alacritty)).

# Wrapping up

And that was it! I actually managed to do it. I am not sure if I could make it even simpler, but I am happy with the result. I can now start my blogs in a better way than before, where I copied and pasted everything from a previous file, that I had to open and close and I also had to be type the path of the file and make it and all of the usual stuff. But hey, now it's everything automated for me!

Also! I also made some changes to the font sizes of this blog, and other CSS things, just because I felt that everything was a little too big, and I didn't feel like scrolling that much just to get past the title. I think I still have to tweak it a little bit, but it is a good start.

This was day 23 of [#100DaystoOffload](https://100daystooffload.com), let me know if you found this kinda useful for you too. Or if you have a better script or anything that you use to make your blog workflow better!
