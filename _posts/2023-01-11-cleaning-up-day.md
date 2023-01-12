---
title: Cleaning my room, cleaning my phone
header: Cleaning my room, cleaning my phone
description: Today was quite a tiring day, we are having friends visiting and I had to clean up my room for them to stay. Still, I also did some cleaning up of my phone's storage
tags: short bash personal
permalink: /blog/cleaning-my-room-cleaning-my-phone/
layout: post
date: 2023-01-11 20:21:17 -0600
host: fosstodon.org
username: joel
com_id: 109674598293618095
---

Since some friends will visit us soon enough, I was going to clean my bedroom, since that's were they'll stay for a few days. I was doing a decent job at it, if a little relaxed.

For some reason, my mother decided to barge into my room to clean up for me, and soon my siblings joined for the massacre. They basically started all over again, opening containers, drawers and reordering everything she saw out of place. I wanted to do it all alone while listening to some podcasts but it was just impossible. 

I was really mad at first, but it soon turned kinda wholesome, I still have a few nostalgic things from my childhood. Some toys, my puzzle collection, an old photo album, a lot of keychains (for some reason I ignore), my small watch collection, and other miscellaneous things. In the end, I have to admit that they did a better job than I could have, and we had a good time, so it was all cool.

I also took some time later to do some cleanup. I backed up some pictures from my phone and compressed them. Using tools such as ImageMagick and the like.

This is a quick script I used, that will compress the image but will preserve its modified date to its creation date. I like this because sorting images by date is easier for me. I actually used ChatGPT for this script. 😉

```bash
for filename in *.jpg; do
	mogrify -verbose -resize 1600 -quality 85 "$filename" "$filename"

  date_string=${filename:4:8}
  time_string=${filename:13:4}
  
  # Create the timestamp in the format YYYYMMDDHHMM
  timestamp="${date_string}${time_string}"

  # Use the touch command to modify the file's timestamps
  touch -m -t "$timestamp" "$filename"
  
  echo "modifying $filename with timestamp $timestamp"
  
done
```


I made some new folders, reorganized some stuff and I am getting ready for switching to a new Android 13 rom. I have to do some backups, but I am almost ready! We'll see.

For some reason I feel like I need to delete and uninstall every app and file I don't need, even though I will wipe it completely anyways. I am just weird like that.

This is day 11 of [#100DaysToOffload](https://100daystooffload.com)
{% include reply.html %}
