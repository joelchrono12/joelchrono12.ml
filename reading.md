---
title: reading list | joelchrono
header: Reading
description: I started reading books again and I decided to create this section to keep track of the ones I've read so far.
permalink: /reading/
layout: default
---

You can also see this list in my Bookwyrm account at [@joel@bookrastinating.com](https://bookrastinating.com/user/joel). You are welcome to join too!

# 👤 Books Read

<table>
  <thead>
    <tr>
      <th>Title</th>
      <th>Start Date</th>
      <th>Finish Date</th>
    </tr>
  </thead>
  <tbody>
{% for item in site.data.books %}
    <tr>
      <td><i>{{ item.title }}</i> by {{ item.author }}</td>
      <td>{{ item.start }}</td>
      <td>{{ item.end }}</td>
    </tr>
{% endfor %}
  </tbody>
</table>

## Books I've read before

I have not read a ton of books, but up until now, I didn't keep track of dates or anything, so these are books that I read at some point between 2010 and 2021 (or maybe earlier).

- 20,000 Leagues Under the Sea by Jules Verne
- The Mysterious Island by Jules Verne
- Journey to the Center of the Earth by Jules Verne
- From the Earth to the Moon by Jules Verne
- Halo: Contact Harvest by Joseph Staten
- Halo: The Fall of Reach by Eric S. Nylund
- Halo: The Flood by William C. Dietz
- Halo: First Strike by Eric. S. Nylund
- Ready Player One by Ernest Cline
- Star Wars: The Force Unleashed by Sean Williams
- The War of The Worlds by H.G. Wells
- The Invisible Man by H.G. Wells
- The Time Machine by H.G. Wells
- Chronicles of Narnia: The Lion, the Witch and the Wardrobe by C.S. Lewis
- The Pilgrim's Progress by John Bunyan
- The 6 Most Important Decisions You'll Ever Make by Sean Covey
- El Profesor Ziper y la Fabulosa Guitarra Electrica by Juan Villoro
