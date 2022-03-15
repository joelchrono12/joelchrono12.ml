---
title: Reading | joelchrono12
header: Reading
description: I started reading books again and I decided to create this section to keep track of the ones I've read so far.
permalink: /reading/
layout: default
---
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

# Other read books
