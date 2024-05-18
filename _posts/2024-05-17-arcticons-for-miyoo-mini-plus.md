---
title: Arcticons for Miyoo Mini Plus
header: Arcticons for Miyoo Mini Plus
description: I decided to create an icon pack for the Miyoo Mini (or whatever other handheld can use them) and here's how.
tags: design art gaming
permalink: /blog/arcticons-for-miyoo-mini-plus/
layout: post
date: 2024-05-17 22:48:15 -0600
host: fosstodon.org
username: joel
com_id: 112460486622936570
image: 'assets/img/blogs/2024-05-17-a-screenshot-of-arcticons-in-the-miyoo-mini-plus.png'

---

I have contributed to the [Arcticons Icon Pack] for a while now, at this point more than 500 icons on it were designed by me. It truly has become my favorite icon pack of all time.

Because of this, after looking for some icons to put in my Miyoo Mini Plus, I decided to just make my own following the same style guidelines found in Arcticons.

Simple lines, 1 px thick and dots at 1.5px if needed in a 48x48 grid. and the icon itself being no more than 44px wide or long, at most.

That's pretty much all I do when designing icons for the project, and it works out well.

Earlier today I shared the first bits of progress [on my Mastodon profile](https://fosstodon.org/@joel/112456579661251554). I used the Silhouette White icon pack by Dreambrace to know the resolution and style the icons should follow.

{% include img.html image='/assets/img/blogs/2024-05-17-the-first-few-icons-in-action.png' caption='The first few icons in action' %}

After sharing that progress, Donno, the creator and maintainer of Arcticons, allowed me to just make it all part of the project in another repo under the Arcticons-Team mantle! You can access the repo [here](https://github.com/Arcticons-Team/Arcticons-Miyoo).

After getting back from work, I ended up doing a many more icons, but there is still quite a way to go! According to the website, there is a total of 55 icons in Onion OS. So we are a third of the way or so.

{% include img.html image='/assets/img/blogs/2024-05-17-icon-pack-applied-on-my-miyoo-mini.png' caption='Icon pack applied on my Miyoo Mini' %}

Since Inkscape, due to the document properties used by Arcticons---the 48 by 48 resolution---I had to generate the square-shaped PNG files, and then add some sort of empty space to fill the ideal resolution for the Miyoo Mini Plus of 120x130px.

For that, I used this script, which can also be found in the repo:

```bash
#!/bin/bash

# Check if Inkscape and ImageMagick are installed
if ! command -v inkscape &> /dev/null
then
    echo "Inkscape could not be found. Please install it first."
    exit 1
fi

if ! command -v convert &> /dev/null
then
    echo "ImageMagick could not be found. Please install it first."
    exit 1
fi

# Create output directory
mkdir -p icons

# Generate duplicate entries sharing the same SVG
cp -v sfc.svg sufami.svg
cp -v sfc.svg satella.svg
cp -v md.svg segacd.svg

# Loop over all SVG files in the current directory
for svg_file in *.svg; do
    # Remove file extension for the output file name
    base_name=$(basename "$svg_file" .svg)
    
    # Convert SVG to PNG (preserving aspect ratio)
    inkscape "$svg_file" --export-type=png --export-width=110 --export-height=110 --export-filename="${base_name}_temp.png"
    
    # Create a new PNG with dimensions 120x130 and place the icon image at the top center
    convert -size 120x130 xc:none "${base_name}_temp.png" -geometry +5+0 -composite "icons/${base_name}.png"
    
    # Remove temporary file
    rm "${base_name}_temp.png"
done

# Delete duplicate entries
rm -v satella.svg sufami.svg segacd.svg

echo "Conversion completed. Check the 'icons' directory for the PNG files."
```

So yeah, that is quite a bit of work, during the following days I'll add more entries to the repo, and feel free to contribute as well if you want to.


{% include img.html image='/assets/img/blogs/2024-05-17-a-screenshot-of-arcticons-in-the-miyoo-mini-plus.png' caption='A screenshot of Arcticons in the Miyoo Mini Plus' %}

This is day 48 of [#100DaysToOffload](https://100daystooffload.com), and post 16 for [#WeBlobPoMo2024](https://weblog.anniegreens.lol/weblog-posting-month-2024).
