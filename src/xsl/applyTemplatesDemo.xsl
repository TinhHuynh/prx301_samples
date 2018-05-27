<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <body>
                <h3>My CD Collections</h3>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="CD">
        <p>
            <xsl:apply-templates select="TITLE"/> <br/>
            <xsl:apply-templates select="ARTIST"/>
        </p>
    </xsl:template>
    <xsl:template match="TITLE">
        Title:
        <span style="color: #ff0000">
            <xsl:value-of select="."/>
        </span>
    </xsl:template>
    <xsl:template match="ARTIST">
        Artist:
        <span style="color: #00ff00">
            <xsl:value-of select="."/>
        </span>
    </xsl:template>
</xsl:stylesheet>
