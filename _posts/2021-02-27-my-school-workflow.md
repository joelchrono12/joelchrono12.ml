---
title: My academic writing workflow (Markdown + Pandoc)
header: My academic writing workflow (Markdown + Pandoc)
date: "2021-02-27 21:21:00 -0600"
tags: foss school linux lifestyle tutorial 
description: "How I make my assignments for my University, at least when they don't make me write everything by hand for some weird reason."
permalink: /blog/doing-school-work/
layout: post
com_id: 105806832145119898
host: fosstodon.org
username: joeligj12

---

So, I have missed 3 days, but I wont let this blog alone. I have mentioned a few times, and in a previous blg that I have gone back to school, and I have managed to get some pretty nice teachers at the moment. First of all, I wanted to share how I am doing my note-taking and how I have delivered most of my homework. I will probably update this very same blogif I find some more useful stuff.

# My Markdown + Pandoc needs.

So, there are quite a lot of great tutorials mentioning different commands, different tips, tricks and ways to use Markdown. However, none of them are really mentioning every single one of my needs (which is understandable). I am not talking about the simple syntax that markdown provides, I will share a few of the ways I found to solve the following needs, that were spread on different videos from different people.

* Add citations, without the need of R Markdown or other programs such as Zotero, using APA formatting.
* Display images on a desired size, without the need of previous editing.
* Change the page's margins as desired.
* Change the language of the text.
* Doing page breaks, or new pages.

## Citations

The first one was the hardest to fix. Because most videos mentioned and showed citations working on their examples, but only one of them showed the commands, and none of them showed how to change the citation style. So I am going to share it here in a quick manner. 

First of all you will need to have a .bib file. This file deals with all of your bibliography. I only have a single one, but you could have many if you so wish (I don't think that you can use many of them on a single file tho). I use a Firefox extension to create this citations called [BibItNow!](https://addons.mozilla.org/en-US/firefox/addon/bibitnow/), I previously used it to get the APA citation, but now I only get the Bibtex one. Each entry looks something like this:

```
@BOOK{DUMMY:1,
AUTHOR="John Doe",
TITLE="The Book without Title",
PUBLISHER="Dummy Publisher",
YEAR="2100",
}
```

After that you just add `bibliography: /path/to/file.bib` to the YAML section of the markdown file.

To add a citations, you just do add `@idofcite` or you can also do `[@idofcite,p.number]` and then, run this command, which will turn those texts into corresponding citations, and add them to the end of your file (You should add an empty `# References` to the end, so it will fill automatically).

```
pandoc file.md -o file.pdf --filter pandoc-siteproc
```

 Finally, to add the desired formatting (APA in my case), I found a [website](https://editor.citationstyles.org/) that contains the .csl files that you need so Pandoc can use its templates. I just added `csl: /path/to/file.csl` to the YAML metadata

## Image sizing

This is a quick one, I was tired of editing images so they looked nice on my pages (they always kept their original resolution, which sometimes looks terrible)

I just had to add this formatting to them, and that fixed it quickly:

```
![Image](/path/to/image.png){width=any}
```

Where `any` is the pixels I want the image to be. This does not work on my website for some reason, but it does for the Pandoc output, which is enough for me.

## Page margins

I got this from [Brodie's video](https://youtu.be/lMIlNsi3eAY) on his Pandoc markdown workflow, its as simple as adding this to the YAML section of the file.

```
geometry:
- top=25mm
- left=20mm
- right=20mm
- bottom=25mm
```

Of course, you can customize the size to fit your needs.

## Change language, new pages, other LATEX goodies

I actually figured out how to change the language on my own. There is a way to do it using a latex package called Babel (or something like that), but I tried adding `lang: es` for Spanish, and it actually worked!

In order to make a new page, or add a page break, you only have to add `\newpage` or `\pagebreak` in any section of your text file, and it should be good to go.

You can also add a table of contents using `\tableofcontents` in the place you want it to be in.

---

In the end, my complete YAML section looks something like this:

```
title: Title
author: Joel Chrono 12
lang: es
date: \today
theme: Copenhagen
geometry:
- top=25mm
- left=20mm
- right=20mm
- bottom=25mm
bibliography: ../../uni.bib 
csl: ../../apa.csl
```

The `theme` is only useful for doing Beamer presentations, but I will have to make another blog to speak about that, since I found some things that others don't mention.

This has been day 20 of [#100DaysToOffload](https://100daystooffload.com)



{% include reply.html %}
