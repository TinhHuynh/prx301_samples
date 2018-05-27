<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>

    <xsl:template match="/">
        <xsl:apply-templates select="outline//*"/>
    </xsl:template>

    <xsl:template match="outline//*">
        <xsl:for-each select="ancestor::*">
            <xsl:text>&#09;</xsl:text>
        </xsl:for-each>
        <xsl:number level="multiple" count="*" from="outline"/>
        <xsl:text>. </xsl:text>
        <xsl:value-of select="text()"/>
        <xsl:text>&#10;</xsl:text>
    </xsl:template>
</xsl:stylesheet>