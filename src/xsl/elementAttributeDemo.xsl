<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" indent="yes" version="1.0"/>
    <xsl:template match="name">
        <xsl:element name="Matches">
            <xsl:element name="Match">
                <xsl:attribute name="Name">
                    <xsl:value-of select="firstName"/>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="lastName"/>
                </xsl:attribute>
                We found a name
            </xsl:element>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet> 