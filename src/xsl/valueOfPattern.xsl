<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
                xmlns:xsi="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <body>
                <h2>My CD Collection</h2>
                <table border="1">
                    <tr bgColor="#9acd32">
                        <th>Title</th>
                        <th>Artist</th>
                    </tr>
                    <tr>
                        <td>
                            <xsi:value-of select="CATALOG/CD/TITLE"/>
                        </td>
                        <td>
                            <xsi:value-of select="CATALOG/CD/ARTIST"/>
                        </td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>