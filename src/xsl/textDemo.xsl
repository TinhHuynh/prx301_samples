<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>
    <xsl:template match="name">
        We found        a           name!
        <xsl:value-of select="firstName"/>
        <xsl:text>   </xsl:text>
        <xsl:value-of select="lastName"/>
        <xsl:text>   </xsl:text>
    </xsl:template>

</xsl:stylesheet>