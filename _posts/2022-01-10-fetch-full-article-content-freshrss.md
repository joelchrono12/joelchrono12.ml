---
title: Fetch full article content in FreshRSS
header: Fetch full article content in FreshRSS
description: So, some blogs and sites I follow don't want to display full articles in their RSS feed... fine, I'll do it myself, and also teach you!
tags: tutorial rss foss selfhost
permalink: /blog/fetch-full-article-content-freshrss/
layout: post
date: 2022-01-10 14:20:57 -0600
host: fosstodon.org
username: joel
com_id: 107600120955393384
---

I won't bring up any names, wait, maybe I will,
[@ssafar](https://fosstodon.org/@ssafar), why do you make me do this? Do you
find joy in my suffering? This blog is made because of you! I got no time to
load your WebGL rotating cube every time I open your website, fetch everything
please, I beg you, but if you don't, no need to worry anymore!


Anyways, this is a tutorial made because one of the small caveats with FreshRSS
is the lack of an automatic way to fetch the full content of an article. Sites
like [Android Police](https://androidpolice.com), or of course, [Simon's
blog](https://simonsafar.com) do not give you that, sometimes because they want you to open their
site and show ads, others just because they write pure HTML instead of being
lazy (in the right ways) and let the machine generate stuff for them.

So, why does FreshRSS not come with this option by default? No idea, but it
does have a way to do it, it is just not properly explained anywhere in their
docs, I had to find a french comment mentioned in an [GitHub thread](https://github.com/FreshRSS/FreshRSS/issues/785), so I used
[DeepL](https://deepl.com) to translate it and, it was actually not that hard
to do, but I decided to explain it a bit more here.

# The proper tutorial

Open any article from any website that doesn't let you fetch full, content,
I'll go with [this random article](https://www.androidpolice.com/2020/05/09/android-police-is-now-on-the-mastodon-social-network/).

Now, in your browser find a way to open the HTML source code of such website.

Here, everything will depend on the site's structure, but it should contain a
main `body` or `article` HTML element, which has the important stuff inside of
it. You should be able to find some id or class that makes it easy to
recognize.

In the case of Android Police, we have this line:

```
<section id="article-body" class="article-body" itemprop="articleBody">
```

Now, we can go to the management settings of the feed we want, and scroll to
the bottom to the Advanced section, there, you should see an option named
`Article CSS selector on original website`. There, you will input the class or
id of the HTML element containing the article content. If you got an id, you
should input `#idname`, if its a class, you use `.classname`, note the use of
the `#` and `.` to differentiate them. You can see how it would look here:

![FreshRSS CSS selector option](/assets/img/blogs/2022-01-11-fetch-article-freshrss-css-setting.png)

If the site is super simple or classless, you might want to go with the HTML
element itself, or a sequence of nested elements, such as `main body`, its all
up to the site, so make sure to check properly.

Finally, scroll to the bottom of the settings and click the "Reload articles"
button, to fetch everything again, now you should see the full content instead
of just whatever small portion of text is included in the default feed.

This is how Simon's website posts look now on my feed:

![FreshRSS Screenshot showing final result](/assets/img/blogs/2022-01-11-fetch-content-rss-final-result.jpg)

As you can see, some sites will have small problems like duplicate titles or
maybe even a couple ads showing up in there, but hey, its the full article
instead of some summary that requires me to click one more time. Yes, you might
need to do this whole process with every site you follow that doesn't have full
content in their feeds, but its kinda cool, maybe FreshRSS will add an easier
way to do this soon enough.

So, this is the 79th post for [#100DaysToOffload](https://100DaysToOffload.com)
challenge, thanks again for the inspiration Simon.

