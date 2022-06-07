---
title: Leaving Google Photos (part 1)
header: Leaving Google Photos (part 1)
description: Photo management and search is one of Google Photos' best features, but I don't like to have all my stuff in one basket. So I decided to look for a different way to backup my memories and protect them from outsiders.
tags: degoogle selfhost linux personal project
permalink: /blog/leaving-google-photos-1/
layout: post
date: 2022-06-07 18:29:25 -0500
host: benign.town
username: joel
com_id: idcomments
---

I might have lied with the title a little bit, I don't really use Google Photos, but I don't think I will stop using the "Google" part of it. I decided to look for a way to backup all those photos, encrypt them, and then upload them once again to Google Drive. I am writing this while doing this task, so I will be documenting what I've done so far, and maybe update you all in a later post.

# Getting my data back

Google offers a [pretty decent way](https://takeout.google.com) to download an archive of all the data they got on me (and you). However, I decided to go ahead and do this in a more nerdy way, that also allows me to skip a ton of waiting time and unnecessary files I don't care about.

When retrieving an archive of Google Photos from Google, they will put it all in a certain file structure and they will duplicate files if you got them in an Album or something else. They will also include a `.json` file that contains metadata related to a picture or video of the same name. I wanted to retrieve these files in a more organized manner, and when I found out about [rclone](https:/rclone.org) I realized it was pretty good for the job. 

Rclone lets me access and manage cloud storage from the terminal, setting it up was not that hard, I used [this post](https://exitcode0.net/backup-google-photos-with-rclone/) as a guide.

So you can pretty much run this command to download all of your photos, structured in folders by year, then by months.

```
rclone copy --progress GooglePhotos:/media/by-month/ ~/Pictures/google-photos-backup/
```

# Getting rid of duplicates
However, I already had some folder with photos divided by year too locally, and I wanted to merge both folders. For this I went the lazy route and downloaded each folder by year. But anyways, now I can download all of my photos, no problem.


Doing an `ls` would output something like this:

```
❯ ls
drwxrwxr-x  - joel  5 Apr 15:42 screenshots
drwxr-xr-x@ - joel  7 Jun 17:49 pics
drwxrwxr-x  - joel  5 Apr 15:41 videos
drwxrwxr-x  - joel  7 Jun 18:50 by-month
```

All the existing folders probably have duplicated photos that are contained in Google Photos too. So now I got a new problem in my hands.

But not really. Thankfully I am aware of a tool with a kinda hard name to remember.

## Czkawka to the rescue

Yeah, [Czkawka](https://github.com/qarmin/czkawka), I had to read the GitHub repo name while typing to make sure I got it right. Still, this tool is absolutely great at looking for duplicate files. Not only can it find actual duplicated files, it's also able to look for similar files, and this is quite a blessing. I won't explain exactly how it works, but the documentation is quite decent and Mental Outlaw [made a video about it](https://youtu.be/CWlRiTD4vDc).

I had already done a similar process before, but while doing so I had compressed most of the files with ImageMagick. However, this messed up the metadata and modification dates, which is not a big deal, but I wanted to try and keep the file as original as possible (even if Google already compressed it somewhat).

The tool (I refuse to type its name again), allows me to look for similar pictures and from all the options, automatically select the oldest one for all the matches it finds, which pretty much means I'll have the original file always.


# That's the progress so far

~~By the way, while typing this I noticed an error which is not actually a bad thing for me. Rclone seems to not be downloading shared pictures and videos. And this is fantastic, because at some point in 2018 I followed a Wallpapers shared folder and it got absolutely *flooded* with thousands of photos that didn't even fit my style, so that's great for me, but I can understand if its somewhat annoying, there is probably a way to fix this, but its fine as is for me.~~

Looks like rclone retried the download and its downloading them just fine. Anyways I had already dealt with that problem before, most of them start in the same way so I can just do an `rm start_of_file_*` to get rid of most. Well not everything can be how you want it I guess.

According to Google itself, I only use around 2GB of Google Photos, that's quite interesting, because it means that most of my backup is as big as it is (around 10GB) *because* of those freaking wallpapers. Also a lot of photos for that one time I logged in to my mom's phone, quite painful.

I am still downloading things, so I will do another post later, maybe in the same day, I don't know.
