<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0">
    
    <xsl:template name='FGDCRequired'>
        <xsl:element name="FGDC_Required">
            <xsl:element name="ISO_Theme">
                <xsl:element name="ISO_Keyword_Thesaurus">ISO 19115 Topic Categories</xsl:element>
                
                <xsl:variable name="MapName" select="/REST_File/mapName"/>
                <xsl:choose>
                    <xsl:when test="contains($MapName,'American Indian')">
                        <xsl:element name="ISO_Keyword">boundaries</xsl:element>
                    </xsl:when>
                </xsl:choose>
                
            </xsl:element>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>