---
title: Fix Activity Tracker duplicates in Miyoo Mini Plus
header: Fix Activity Tracker duplicates in Miyoo Mini Plus
description: So if you ever edit the name of your ROM files you might run into some problems in your Miyoo Mini's Activity Tracker App, here's how I fixed it!
tags: tutorial
permalink: /blog/fix-activity-tracker-duplicates-miyoo-mini-plus/
layout: post
date: 2024-05-11 09:29:35 -0600
host: fosstodon.org
username: joel
com_id: 112423858414354327
---


I have been having fun with my Miyoo Mini+ and one of my favorite features is its Activity Tracker app! However, I ran into an annoying problem since I got some duplicated entries, after I changed the ROM filename, or after I replaced the ROM with a patched one.

The easiest way to fix this is to rename the ROM to the what it was before.[^1]

This fixes the problem from there on? But what about the duplicated entries that are already saved?

Well, this will be easier if you have some basic knowledge of how a database or a spreasheet works, it is not very hard, but still a bit scary.

The Activity Tracker data is stored in the path `/Saves/CurrentProfile/play_activity/play_activity_db.sqlite`, it should be the only file in the folder. __Make a copy of the file and put it somewhere safe.__

I will use [DB Browser for SQLite](https://sqlitebrowser.org/), a cross-platform program that will let you access the database and edit it, just drag and drop it there, pretty much.

{% include img.html image='/assets/img/blogs/2024-05-11-this-is-what-the-program-looks-like-after-opening-the-database.png' caption='This is what the program looks like after opening the database' %}

Go to the _Browse Data_ tab, and in the Table picker you will find two tables to choose from. In the `rom` table, you will find a list of ROMS, make sure to check for any duplicated names, and note the `id` of them, you should choose on of them to keep.


{% include img.html image='/assets/img/blogs/2024-05-11-the-table-contents.png' caption='The table contents' %}

For this example, let's note the Chrono Trigger duplicated entries, with the values `16` and `17`, you could delete one of them, it is not really necessary, but if you want to tidy up the database, I guess you can do it.

Go to the other table, named `play_activity`, the information found here can be a little bit harder to parse, but it's not that big of a deal.

{% include img.html image='/assets/img/blogs/2024-05-11-play_activity-table-with-a-filter-enabled.png' caption='play_activity table with a filter enabled' %}

All you need to do, is use the filter in the `rom_id` column to find the id's you want to change, and then edit each individual entry, just click on the cell, type the value you want and hit Enter. You could also execute some simple SQL to accelerate the process:

```sql
UPDATE play_activity ---the table name
SET rom_id = chosen_value ---whatever id value you chose
WHERE rom_id = old_value; ---the id value that will be replaced
```

After that, all the entries will be unified to a single `rom_id`. Once you are done, remember to click the _Write Changes_ button.

You can load up your SD card and you should see all your play time unified on a single entry! If game art is missing, or game names are incorrect, you can use this same method to edit the `rom` table as well, but editing file names might be easier for that.

So, I think this is pretty much it, I don't write as many tutorials since most of the time there are better ones out there and I would rather link to those, but I could not find any guidance on this problem, and I decided to write my own. I hope it is useful for you!

[^1]: You should also change the filename of the savestates, and the save file itself, and the game cover if there is any.

This is day 43 of [#100DaysToOffload](https://100daystooffload.com) and post 11 of [#WeblogPoMo2024](https://weblog.anniegreens.lol/weblog-posting-month-2024).
