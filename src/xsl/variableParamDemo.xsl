<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/aaa">
        <xsl:apply-templates select="bbb">
            <xsl:with-param name="A">New-A</xsl:with-param>
            <xsl:with-param name="B">New-B</xsl:with-param>
        </xsl:apply-templates>
    </xsl:template>
    <xsl:template match="bbb">
        <xsl:param name="A">Default A</xsl:param>
        <xsl:variable name="B">Default B</xsl:variable>
        <xsl:value-of select="$A"/>
        <br/>
        <xsl:value-of select="$B"/>
    </xsl:template>
</xsl:stylesheet>