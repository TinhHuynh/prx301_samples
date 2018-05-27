<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
                xmlns:xsi="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" indent="yes" version="1.0"/>
    <xsl:template match="name">
        <Matches>
            <Match>We found a name</Match>
            <Name>
                <xsi:value-of select="."/>
            </Name>
        </Matches>
    </xsl:template>
</xsl:stylesheet>