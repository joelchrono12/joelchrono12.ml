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
        <div class="header-container">
          <a href="/">
		  <img class="logo" src="/assets/img/logo.svg"/>
          </a>
        {% include navigation.html %}
        </div>
      </header>
      <main class="main-container">
        <p>This is a web feed that can be viewed in the browser. <b>Subscribe for free</b> by copying the URL to your RSS reader of choice:</p> 
        <p><pre><code> {{ site.url }}/feed.xml </code></pre></p>
        <p>Read how <a href="/blog/improving-my-rss-feed/">I improved this feed, and made it <b>human-readable</b></a>.</p>
        <h2><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 455.731 455.731" xml:space="preserve"> <path style="fill:#f78422" d="M0 0h455.731v455.731H0z"/> <path style="fill:#fff" d="M296.208 159.16C234.445 97.397 152.266 63.382 64.81 63.382v64.348c70.268 0 136.288 27.321 185.898 76.931 49.609 49.61 76.931 115.63 76.931 185.898h64.348c-.001-87.456-34.016-169.636-95.779-231.399z"/> <path style="fill:#fff" d="M64.143 172.273v64.348c84.881 0 153.938 69.056 153.938 153.939h64.348c0-120.364-97.922-218.287-218.286-218.287z"/> <circle style="fill:#fff" cx="109.833" cy="346.26" r="46.088"/> </svg> Latest 20 posts</h2>
        <xsl:apply-templates select="atom:feed/atom:entry[position() &lt;= 20]"/>
      </main>
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
