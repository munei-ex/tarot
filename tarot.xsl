<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes" encoding="UTF-8"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Карти Таро</title>
        <style>
          /* Додайте стилі за бажанням */
        </style>
      </head>
      <body>
        <h1><xsl:value-of select="/Deck/title"/></h1>
        <p><xsl:value-of select="/Deck/description"/></p>

        <h2>Старші Аркани</h2>
        <ul>
          <xsl:for-each select="/Deck/cards/arcana/major/cards/card">
            <li>
              <h3><xsl:value-of select="@title"/></h3>
              <p><xsl:value-of select="description"/></p>
            </li>
          </xsl:for-each>
        </ul>

        <h2>Молодші Аркани</h2>
        <xsl:for-each select="/Deck/cards/arcana/minor/suits/*">
          <h3><xsl:value-of select="name()"/></h3>
          <p><xsl:value-of select="description"/></p>
          <ul>
            <xsl:for-each select="cards/card">
              <li>
                <h4><xsl:value-of select="@title"/></h4>
                <p><xsl:value-of select="description"/></p>
              </li>
            </xsl:for-each>
          </ul>
        </xsl:for-each>

      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
