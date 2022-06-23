---
title: Using Jekyll's collections to share origami
header: Using Jekyll's collections to share origami
description: I created a new section on my website to share my origami posts, which have taken over my Mastodon account lately. I decided to have a section where I share pictures of them and tutorials (if available).
tags: art blog
permalink: /blog/using-jekyll-collections-to-share-origami
layout: post
date: 2022-05-29 19:50:12 -0500
host: benign.town
username: joel
com_id: 108388254429763876
---

So I had been meaning to add different forms of content on my blog, having sections for stuff that I don't really consider a proper blogpost, but I never really had the time, and I didn't really generate enough diverse content for me to try setting it up, until recently.

I have been working for my University during the last few months, but I don't really have to do a lot of the time, so I recently picked up on my oldest hobby, origami.

I love origami, and I've been meaning to talk about it almost since I started this blog, but I've not put much effort into even trying. But since I had done quite a lot of folds lately, and had already taken a bunch of pictures of them, all I had to do was put them together and organize them a little bit.

This is not a tutorial, [Jekyll's documentation is pretty decent on this topic](https://jekyllrb.com/docs/collections/), so I'll just share the small changes I did for my use case.

My `_config.yml` file had these lines added

```yaml
collections:
  origami:
    output: true
feed:
  collections:
    origami:
      path: "/origami.xml"
```

I am using the [jekyll-feed](https://github.com/jekyll/jekyll-feed) plugin, which should already be used by your blog if you provide RSS feeds!

After doing those changes I created an `origami.md` file in my website's root directory that served as a template. It has some metadata that is not really that important but this is the main thing. You can always access [my website's source code](https://github.com/joelchrono12/joelchrono12.ml) too.

{% raw %}
```html
<div>
 <table>
  <tr>
    <th>Model</th>
    <th>Author</th>
    <th>Tutorial</th>
    <th style="text-align: right">Photo</th>
  </tr>
{% for origami in site.origami reversed %}
  <tr>
    <td><a href="{{ origami.url }}">{{ origami.title }}</a></td>
    <td><a href="{{ origami.creator.site }}">{{ origami.creator.name }}</a></td>
    {% if origami.tutorial %}
    <td><a href="{{ origami.tutorial }}">Yes</a></td>
    {% else%}
    <td>No</td>
    {% endif %}
    <td style="text-align: right"><img width="210px" src="{{ origami.image }}"
    alt="{{ origami.description }}" title="{{ origami.description }}"></td>
  </tr>
{% endfor %}
</table>
</div>
```
{% endraw %}

Now all I had to do was create files inside a directory named `_origami`, add some metadata in YAML format, in between dashes, and call it a day. Like the following example.

```yaml
layout: origami
header: Owl by Nguyễn Hùng Cường
title: Owl
creator:
    name: Nguyễn Hùng Cường
    site: https://www.flickr.com/people/blackscorpion/
tutorial: https://youtu.be/DExjwwnKCAY
date: 2022-05-05
description: "An Owl with a great 3D look, really smooth and clean looking."
image: /assets/img/origami/owl_nhc.jpg
```

So, anyways, its pretty simple to do. I wanted to get back into writing since it had been a while, so this is pretty much it. Thanks for reading!
