---
title: Transferring PSP PS1 save files to Miyoo Mini Plus
header: Transferring PSP PS1 save files to Miyoo Mini Plus
description: How to turn the PS1 savefiles of games played on PSP, to a regular savefile usable in PS1 emulators and retro emulation devices like the Miyoo Mini Plus
tags: emulation psp gaming tutorial linux
permalink: /blog/transferring-psp-ps1-savefiles-to-miyoo-mini-plus/
redirect_from: /blog/transferring-ps1-savefiles-to-miyoo-mini-plus/
layout: post
date: 2024-05-12 23:13:11 -0600
host: fosstodon.org
username: joel
com_id: 112432222763935722
---

Once again I'm here writing some quick notes on the adventures I had today setting up my Miyoo Mini Plus.

I had a few PS1 games on EBOOT.PBP format on my PSP, which have worked quite well so far, but the savefile format only works on the PSP itself and nothing more.

Since my move to the Miyoo Mini Plus, and me deciding to switch my PS1 gaming to it from the time being, I had to figure out how to transfer those savefiles over.

First off: figuring out which savefile is which.


The easiest way to know what save corresponds to what game is to open the game in you PSP, save, exit and then connect the device to a computer and sort by date.

The next best way is to look for your game in the [PSX Data Center](https://psxdatacenter.com/ntsc-u_list.html) using Ctrl+F (there are lists for games in PAL and Japanese regions which can be seen there as well) and then finding the corresponding code.

The PSP has its savefiles located in the path `PSP/SAVEDATA/` and it probably contains a bunch of folders with titles like this `SLES01734` or `SLUS00585`, the file that has a matching code will be the one.

Opening the folder you will find a PNG file, usually of the game cover art, which will confirm it is the game we want.

Finally, you can use the online website [Save File Converter](https://savefileconverter.com/#/ps1/psp) to convert your saves from the PSP's `.VMP` to proper PS1 save files in the `.mcr` format.

Note that The Miyoo Mini Plus will **not recognize this filename extension**, however it is as simple as **renaming** the filename extension to `.srm` instead.

Now, the format of the ROM file itself is a different story.

PSP runs `EBOOT.PBP` files, you can use these files in the Miyoo Mini Plus, just copy paste it to the proper location and change the name to `Game_Name.pbp`. Note that if the file comes with some `KEYS.BIN` and other extra files, it will probably not work in the MM+, but I haven't looked into how to fix that.

The Miyoo Mini Plus supports `.chd` and the regular `.cue` and `.bin` roms. The `.chd` format is the smallest in size and the compression is lossless, so I see no reason not to use it. The easiest way would be to source it directly in that file format, but you can also convert `.cue/.bin` files by using the `chdman` command line tool. This is located in the `mame` package in Void Linux, it is a standalone program in Arch as well.

Run this command and you are good to go:

```bash
chdman createcd -i "Resident Evil 3 - Nemesis (USA).cue"  -o "Resident Evil 3 - Nemesis (USA).chd"
```

If you install `parallel` you can do batch conversion of files, with this line:

```bash
parallel chdman createcd -i {} -o {.}.chd ::: *.cue
```

Which will convert all the `.cue`files in the working directory to `.chd`.

Feel free to check the official documentation for more information about [running PS1 games on Onion OS](https://onionui.github.io/docs/emulators/psx).



This is day 44 of [#100DaysToOffload](daystooffload.com/) and post 12 of [#WeblogPoMo2024](https://weblog.anniegreens.lol/weblog-posting-month-2024)
