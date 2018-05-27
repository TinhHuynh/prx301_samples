<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="library">
        <table border="0" width="50%">
            <xsl:for-each select="book">
                <tr>
                    <td>
                        <i>
                            <xsl:value-of select="booktitle"/>
                        </i>
                    </td>
                    <td>
                        <xsl:value-of select="price"/>
                    </td>
                </tr>
            </xsl:for-each>
        </table>
     </xsl:template>
</xsl:stylesheet>