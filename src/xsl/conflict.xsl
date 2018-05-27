<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="conflict1.xsl"/>
    <xsl:import href="conflict2.xsl"/>
    <!--<xsl:template match="bbb">-->
        <!--<xsl:apply-templates select="*"/>-->
    <!--</xsl:template>-->
    <!--<xsl:template match="bbb">-->
        <!--conflict-bbb-->
        <!--<xsl:apply-imports/>-->
    <!--</xsl:template>-->

    <!--<xsl:template match="/">-->
        <!--<xsl:apply-templates/>-->
    <!--</xsl:template>-->
    <!--<xsl:template match="bbb">-->
        <!--<xsl:apply-templates/>-->
    <!--</xsl:template>-->
    <!--<xsl:template match="/">-->
        <!--<xsl:apply-templates/>-->
        <!--<xsl:apply-imports/>-->
    <!--</xsl:template>-->
    <xsl:template match="/">
        <xsl:apply-imports/>
        <xsl:apply-templates/>
    </xsl:template>
</xsl:stylesheet>