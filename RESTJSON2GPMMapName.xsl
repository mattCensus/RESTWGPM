<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:gco="http://www.isotc211.org/2005/gco" xmlns:gmd="http://www.isotc211.org/2005/gmd"
    xmlns:gmi="http://www.isotc211.org/2005/gmi" xmlns:gmx="http://www.isotc211.org/2005/gmx"
    xmlns:gsr="http://www.isotc211.org/2005/gsr" xmlns:gss="http://www.isotc211.org/2005/gss"
    xmlns:gts="http://www.isotc211.org/2005/gts" xmlns:gml="http://www.opengis.net/gml/3.2"
    xmlns:srv="http://www.isotc211.org/2005/srv" xmlns:default="http://www.opengis.net/wms"
    xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:esri_wms="http://www.esri.com/wms"
    xmlns:vmf="http://www.altova.com/MapForce/UDF/vmf"
    xmlns:fn="http://www.w3.org/2005/xpath-functions"
    xmlns:grp="http://www.altova.com/Mapforce/grouping"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    exclude-result-prefixes="fn grp vmf xs xsi xsl xd">
    
    <xsl:template name="mapName">
        <xsl:element name="Title">
           <xsl:variable name="RestURL" select="/REST_File/URL"/>
           <xsl:variable name="mapName" select="/REST_File/mapName"/>
            
            <xsl:choose>
                <xsl:when test="contains($RestURL,'Generalized')">
                    <xsl:variable name="post" select="substring-after($RestURL,'services/')"/>
                    <xsl:variable name="finalVintage" select="substring-before($post,'/MapServer')"/>
                    <xsl:variable name="FinalVintage2" select="substring-before($finalVintage,'/')"/>
                    <xsl:variable name="FinalVintage3" select="replace($FinalVintage2,'_', ' ')"/>
                    <xsl:variable name="FinalVintage4" select="concat($FinalVintage3,' ',$mapName)"/>
                    <xsl:value-of select="$FinalVintage4"/>
                </xsl:when>
                <!--  <xsl:when test="contains($RestURL,'Econ')">
                    <xsl:variable name="post" select="substring-after($RestURL,'services/')"/>
                    <xsl:comment>post <xsl:value-of select="$post"/></xsl:comment>
                    <xsl:variable name="finalVintage" select="substring-before($post,'/MapServer')"/>
                    <xsl:variable name="FinalVintage2" select="substring-before($finalVintage,'/')"/>
                    <xsl:variable name="FinalVintage3" select="replace($FinalVintage2,'_', ' ')"/>
                    <xsl:variable name="FinalVintage4" select="concat($FinalVintage3,' ',$mapName)"/>
                    <xsl:value-of select="$FinalVintage4"/>
                </xsl:when>-->
                <xsl:otherwise>
                    <xsl:value-of select="$mapName"/>
                </xsl:otherwise>
                
            </xsl:choose>
            
        
        
        </xsl:element>
    </xsl:template>
    
</xsl:stylesheet>