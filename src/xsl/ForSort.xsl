<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
                xmlns:xsi="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/" >
        <html>
            <head>
                <title>Persons</title>
            </head>
            <body>
                <table border="1">
                    <tr>
                        <th>First Name</th>
                        <th>Last Name</th>
                    </tr>
                    <xsl:for-each select="persons/person">
                        <xsi:sort select="name/lastName" />
                        <tr>
                            <td>
                                <xsl:if test="not(@real='no')">
                                    <a href="{@link}"><xsl:value-of select="name/firstName"/></a>
                                </xsl:if>
                                <xsl:if test="@real='no'">
                                    <xsl:value-of select="name/firstName"/>
                                </xsl:if>
                            </td>
                            <td><xsl:value-of select="name/lastName"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
