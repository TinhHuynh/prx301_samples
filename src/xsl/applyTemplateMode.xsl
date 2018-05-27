<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/aaa">
        <xsl:apply-templates select="bbb" mode="m1"/>
        <xsl:apply-templates select="bbb" mode="m2"/>
        <xsl:apply-templates select="bbb" mode="m3"/>
    </xsl:template>
    <xsl:template match="bbb" mode="m1">Hello</xsl:template>
    <xsl:template match="bbb" mode="m2">, </xsl:template>
    <xsl:template match="bbb" mode="m3">world!</xsl:template>
</xsl:stylesheet>
