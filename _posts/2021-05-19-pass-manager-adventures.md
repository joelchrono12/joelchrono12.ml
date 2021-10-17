---

title: Pass password manager on Linux, Android and Windows 
header: Pass password manager on Linux, Android and Windows 
description: I decided to try Pass, changing my workflow and getting it to work everywhere I need it to 
tags: linux android foss windows tutorial privacy security
permalink: /blog/pass-unix-manager/ 
layout: post 
date: "2021-05-19 11:55:15 -0500" 
host: fosstodon.org 
username: joeligj12 
com_id: 106270494790830151

--- 

After a month or so of using Keepass to manage my passwords, I wanted to
set up something even simpler, and I decided to give it a try once and for
all.

Pass is an extremely simple tool to manage your passwords by using GPG
encryption on plain text files, allowing fairly customizable folder
structure.  

It follows the Unix philosophy of doing one thing and doing it right. It
can be extended with different clients and plugins that expand its
functionality and allow features like auto-typing, otp support and filename
encryption, which is kinda nice.

# Pass functionality 

I am going to assume you know how to make and deal with gpg keys. But I will
leave some sources if you wanna deal with that.

So, all I did was run 

```
pass init <gpg-id> 
```

Where you use the id of a preexisting gpg key you have. After that, to save
a password you use 

```
> pass insert personal/example.com/account-name
Enter password for account-name: account-password
```

If you're creating a new account, you can use: `pass generate <account-name>` 
which will make a random password and save it automatically. 

Pass uses the first line of a file as password, and you can add extra lines
to it if you so wish. Therefore you can use the `-m` flag to continue
adding lines when creating a new entry.

I set up my files like this: 

```
password
url: example.com
login: account@example.com
otpauth: otp_url_thing
autotype: login :tab pass :enter :delay :otp :enter
comment: whatever
```

I already explained enough of Pass itself, but this is not an in-depth tutorial,
so if you wanna know more about pass itself you can visit 
its [website](https://passwordstore.org/)

# My personal setup 

Coming from Keepass, I used [pass-import](https://github.com/roddhjav/pass-import) 
and the following command

```
pass import keepass keepass_file.kdbx
```

This means I dont need to risk a plain text file such as CSV, which is kinda
cool.

But, how do I actually use it?, well, on Linux I use [rofi-pass](https://github.com/carnager/rofi-pass), a great 
utility that makes use of rofi and has support for a lot of features,
including auto-typing and otp support if you have the extension `pass-otp` installed. These
tools read the lines I showcased before, which is pretty practical. 
I am quite a fan of how simple it is to configure and extend pass, and the
amount of existing tools that make use of it is great.


There are some browser extensions. I tried [PassFF](https://github.com/passff/passff)
, but in the end I decided to only depend on rofi, since its simpler and safer 
than a plugin in my opinion. 

## Pass on Android

On my android device I decided to install [Password Store](https://github.com/android-password-store/Android-Password-Store)
which is a great client that supports auto-fill and other things. 

However, how do I sync everything up?. The answer is pretty simple.
Syncthing, a program that need no presentation. 

I just shared my `password-store` folder to android and called it a day. 

Password store needs [OpenKeychain](https://github.com/open-keychain/open-keychain) to 
gain access to your gpg keys. To **export your private key** you have to run
this command from your terminal:

```
# In my case is gpg2, your distro might just use gpg
gpg2 --output secret_key.gpg --armor --export-secret-key <gpg-id>
```

Just copy it to your device and import it from the OpenKeychain app. it
should prompt you to input your passphrase and now you can use it on
Password Store.

The app works surprisingly well on browsers, compared to other password
managers for Android, although its not as good on some apps, of course your 
mileage may vary, most of them should work just fine.


## Pass on Windows

I again used Syncthing to keep everything up to date. I 
installed [gpg4win](https://www.gpg4win.org/) to get everything gpg needs to
work and I imported my key using Kleopatra, which gets installed
automatically. You could also use the command line but I didn't know it was
available when I did it.

I was unable to find a working solution similar to `rofi-pass`, I am a fan
of [Wox launcher](https://github.com/Wox-launcher/Wox), but it didn't have a 
plugin for pass, and it hasn't been updated in a while so I decided to go for 
[browser-pass](https://github.com/browserpass/browserpass-extension) which
is a browser plugin. I would have preferred a native program to do it but it
is what it is.

There is actually a native program, [QtPass](https://qtpass.org/). But it 
doesn't have some pop-up shortcut and I didn't feel like finding out how to do 
keyboard shortcuts on Windows.

Browserpass is wonderful though, and it is still being updated, so I will
still use it, and I will use QtPass for native applications.


# Some Troubleshooting

During my experimentation, I faced many problems. Sometimes saving new
passwords or edited changes on existing entries would not work. This
happened because the `.gpg-id` file used by pass was trying to encrypt the files with
a non existent key, since, Password Storeoverwrote it (I assume 
that it is a subkey that only existed on android and the rest of my devices 
are not aware of it). 

Another problem is getting the password-store folder location to be found by
both of these programs. The plugin settings provide a way to set a custom
folder, and so does QtPass, I placed my folder in
`C:\Users\my-user\password-store` and managed to use it quite easily.

# Final thoughts

I am really liking this setup, `pass` supports using `git` to manage branches
and that kinda stuff. But I decided to keep it simple and just use Syncthing as
mentioned before, I dont really have a secure git instance or somthing like
that, and since the filenames are not encrypted this can be a bit of leaked
metadata, but that isnt really a problem locally, and its probably no big deal
if I make a private repo on Codeberg or something like that.

I kinda wanted to make this blog a bit longer, but its honestly not that 
difficult to do the switch and I just provided a few sources across this post that
could can be helpful if you need something more. 

This is day 37 of [#100DaystoOffload](https://100DaystoOffload,com)

