#!/usr/bin/bash
./openring \
  -n 5 \
  -s https://erzadel.net/feed.xml \
  -s https://chriswiegman.com/feed \
  -s https://lazybear.io/index.xml \
  -s https://kevq.uk/feed \
  -s https://jasonsanta.xyz/rss.xml \
  -s https://dusanmitrovic.xyz/rss \
  -s https://rusingh.com/category/post/article/feed/ \
  < _includes/in.html \
  > _includes/out.html
