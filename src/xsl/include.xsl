<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <xsl:for-each select="collection/book"/>
        <xsl:apply-templates/>
        <br/>
    </xsl:template>
    <xsl:include href="includefile.xsl"/>
    <xsl:template match="title">
        <div style="color:blue">
            Title:
            <xsl:value-of select="."/>
        </div>
    </xsl:template>
</xsl:stylesheet>