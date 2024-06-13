<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>

    <!-- Template for processing the root element -->
    <xsl:template match="/deck">
        <html>
            <head><title>Tarot Deck Information</title></head>
            <body>
                <h1><xsl:value-of select="title"/></h1>
                <table border="1">
                    <tr bgcolor="#81a1c1">
                        <th>Title</th>
                        <th>Description</th>
                    </tr>
                    <!-- Process each card -->
                    <xsl:apply-templates select="card"/>
                </table>
            </body>
        </html>
    </xsl:template>

    <!-- Template for processing each card -->
    <xsl:template match="card">
        <tr>
            <td><xsl:value-of select="title[@xml:lang='en']"/></td>
            <td><xsl:value-of select="description/paragraph"/></td>
        </tr>
    </xsl:template>

    <!-- Match and ignore text nodes -->
    <xsl:template match="text()|@*"/>
</xsl:stylesheet>
