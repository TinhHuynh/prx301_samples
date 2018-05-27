<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" indent="yes" version="1.0"/>
    <xsl:template match="name">
        <Matches>
            <Match Name="{firstName} {lastName}">We found a name!</Match>
        </Matches>
    </xsl:template>
</xsl:stylesheet>