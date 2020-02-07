<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0">
    <xsl:template name="abstract">
        <xsl:element name="Abstract">
        The Census REST services provide a way for web clients to communicate with GIS servers through 
        Representational State Transfer (REST) technology. REST technology is a set of rules that allows users to
        issue requests to the Census REST servers through structured URLS.
        
        <xsl:variable name="MapName" select="/REST_File/mapName"></xsl:variable>
        <xsl:variable name="description" select="/REST_File/description[1]"/>
        The <xsl:value-of select="$MapName"/> map contains
        <xsl:for-each select="/REST_File/layers/name">
            
            <xsl:choose>
                <xsl:when test="position() !=last()">
                     <xsl:variable name="finalstring" select="concat(.,' , ')"/> 
                    <xsl:value-of select="$finalstring"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:variable name="finalstring" select="concat(' and  ', . ,'.')"/>    
                    <xsl:value-of select="$finalstring"/>
                </xsl:otherwise>
            </xsl:choose>
           
        </xsl:for-each>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>