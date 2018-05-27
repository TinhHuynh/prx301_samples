<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <xsl:call-template name="startHTML">
            <!--<xsl:with-param name="Title"  select="'Persons'"/>-->
        </xsl:call-template>
    </xsl:template>
    <xsl:template name="startHTML">
        <xsl:param name="Title" select="'No parameter'"/>
        <html>
            <head><title><xsl:value-of select="$Title"/></title></head>
            <body>
                <h1><xsl:value-of select="$Title"/></h1>
                <ul>
                    <xsl:apply-templates select="persons/person">
                        <xsl:sort select="lastName"/>
                    </xsl:apply-templates>
                </ul>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="person[not(@real='no')]">
        <li style="color:blue;">
            <xsl:apply-templates/>
        </li>
    </xsl:template>
    <xsl:template match="person">
        <li style="color:red; text-decoration:line-through">
            <xsl:apply-templates/>
        </li>
    </xsl:template>
    <xsl:template match="name">
        <xsl:value-of select="lastName"/>
        <xsl:text> </xsl:text>
        <xsl:value-of select="firstName"/>
    </xsl:template>
</xsl:stylesheet>