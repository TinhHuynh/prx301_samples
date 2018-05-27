<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>
    <xsl:template match="/persons">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="person | xPerson">
        <xsl:number level="any" count="person | xPerson"/>
        <xsl:text>. </xsl:text>
        <xsl:value-of select="name/lastName"/>
        <xsl:text>&#10;</xsl:text>
    </xsl:template>
</xsl:stylesheet>