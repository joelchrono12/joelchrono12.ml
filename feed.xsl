---
layout: none
title: rss feed | joelchrono
permalink: "/feed.xsl"
---
<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet 
version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:atom="http://www.w3.org/2005/Atom"
exclude-result-prefixes="atom"
>
<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
  <html xmlns="http://www.w3.org/1999/xhtml">
    {% include head.html %}
    <body>
      <header>
        <center class="home-top">
          <a href="/">
            <svg width="80" height="60.5" version="1.1" viewBox="0 0 80 60.5" xmlns="http://www.w3.org/2000/svg"><g transform="matrix(1.76 0 0 1.76 -2.4 -12.1)"><g fill="#a9b1d6"><path d="m36.9 6.84-0.79 4.5 2.77-0.913z"/><path d="m33.2 7.73 0.288 4.14 2.66-0.523z"/><path d="m29.9 9.46 1.1 4.2 2.5-1.79z"/><path d="m27.1 11.7 1.75 4.28 2.13-2.32z"/><path d="m24.8 14.5 2.6 4.2 1.4-2.68z"/><path d="m23.1 17.6 3.71 3.53v-3.15z"/><path d="m39.9 9.33a15.3 15.4 0 0 0-15 12.5l4.42-0.877a1.88 1.88 0 0 1 1.91 0.77 9.69 9.74 0 0 1 9.18-6.69 9.69 9.74 0 0 1 6.22 2.27l-0.345-6.53a15.3 15.4 0 0 0-6.38-1.4zm-15.1 17.7a15.3 15.4 0 0 0 13.3 13l-1.24-6.24a9.69 9.74 0 0 1-5.74-6.45 1.88 1.88 0 0 1-1.79 0.617zm21.9 5.15a9.69 9.74 0 0 1-3.22 1.78l-1.18 5.96a15.3 15.4 0 0 0 4.05-1.2z" stop-color="#000000"/></g><g fill="#9ece6a"><g stroke-linecap="round" stroke-linejoin="round"><path d="m30.1 23.6a0.792 0.792 0 0 0-0.792 0.792 0.792 0.792 0 0 0 0.792 0.792h7.69a0.792 0.792 0 0 0 0.792-0.792 0.792 0.792 0 0 0-0.792-0.792z" color="#000000"/><path class="a" d="m29.7 26.1-8.41-1.67 8.41-1.67z" stroke="#9ece6a"/><path d="m40.2 21.2c-1.75 0-3.19 1.43-3.19 3.18s1.44 3.18 3.19 3.18 3.19-1.43 3.19-3.18-1.44-3.18-3.19-3.18zm0 1.58c0.897 0 1.61 0.706 1.61 1.59 0 0.886-0.708 1.59-1.61 1.59s-1.61-0.706-1.61-1.59c0-0.886 0.708-1.59 1.61-1.59z" color="#000000"/><path d="m40.9 32.3a0.792 0.591 0 0 1-0.792 0.591 0.792 0.591 0 0 1-0.792-0.591v-5.74a0.792 0.591 0 0 1 0.792-0.591 0.792 0.591 0 0 1 0.792 0.591z" color="#000000"/><path class="a" d="m38.5 32.2 1.67 8.41 1.67-8.41z" stroke="#9ece6a"/></g><path d="m1.36 30.2v4.89l4.93 4.89v-9.77z"/></g><path d="m6.25 40h8.35v-4.89h-8.35z" fill="#739449"/><path d="m6.35 13.6h8.2v-4.89h-8.2z" fill="#739449"/><g fill="#9ece6a"><path d="m14.5 40h0.0928l4.84-4.89h-4.93z"/><path d="m14.6 8.74v4.89h4.93z"/><path d="m14.5 13.6v21.5h4.93v-21.5h-4.89z"/></g></g></svg>
          </a>
        </center>
        <center>
          {% include navigation.html %}
        </center>
        <p>This is a web feed that can be viewed in the browser. <b>Subscribe for free</b> by copying the URL <code> {{ site.url }}/feed.xml </code> into your RSS reader.</p>
        <p>Read how <a href="/blog/improving-my-rss-feed/">I improved this feed, and made it <b>human-readable</b></a>.</p>
      </header>
      <main>
        <h2><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 455.731 455.731" xml:space="preserve"> <path style="fill:#f78422" d="M0 0h455.731v455.731H0z"/> <path style="fill:#fff" d="M296.208 159.16C234.445 97.397 152.266 63.382 64.81 63.382v64.348c70.268 0 136.288 27.321 185.898 76.931 49.609 49.61 76.931 115.63 76.931 185.898h64.348c-.001-87.456-34.016-169.636-95.779-231.399z"/> <path style="fill:#fff" d="M64.143 172.273v64.348c84.881 0 153.938 69.056 153.938 153.939h64.348c0-120.364-97.922-218.287-218.286-218.287z"/> <circle style="fill:#fff" cx="109.833" cy="346.26" r="46.088"/> </svg> Latest 20 posts</h2>
        <xsl:apply-templates select="atom:feed/atom:entry[position() &lt;= 20]"/>
      </main>
      {% include footer.html %}
    </body>
  </html>
  </xsl:template>
  <xsl:template match="atom:entry">
    <article class="posts">
      <a href="{atom:link[@rel='alternate']/@href}"><b><xsl:value-of select="atom:title"/></b></a>
      <div><xsl:value-of select="atom:summary" disable-output-escaping="yes" /></div>
      <small class="post-date">
        <!--Display the date in YYYY-MM-DD format-->
        <xsl:variable name="year" select="substring(atom:published, 1, 4)"/>
        <xsl:variable name="month" select="substring(atom:published, 6, 2)"/>
        <xsl:variable name="day" select="substring(atom:published, 9, 2)"/>
        <xsl:value-of select="concat($year, '-', $month, '-', $day)"/>
      </small>
    </article>
  </xsl:template>
</xsl:stylesheet>
