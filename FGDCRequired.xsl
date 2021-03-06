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
    
    <xsl:template name='FGDCRequired'>
        <xsl:element name="FGDC_Required">
            <xsl:element name="ISO_Theme">
                <xsl:element name="ISO_Keyword_Thesaurus">ISO 19115 Topic Categories</xsl:element>
               
                  <xsl:variable name="MapName" select="/REST_File/mapName"/>
                  <!-- <xsl:comment>MapName <xsl:value-of select="$MapName"/> </xsl:comment>-->
                <xsl:choose>
                    <xsl:when test="contains($MapName,'Economic')">
                        <xsl:element name="ISO_Keyword">economy</xsl:element>
                        <xsl:call-template name="FGDCOtherKeywords"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="FGDCOtherKeywords"/>
                    </xsl:otherwise>
                    
                </xsl:choose>
                
            </xsl:element>
        </xsl:element>
    </xsl:template>
    
    <xsl:template name="FGDCOtherKeywords">
        <xsl:variable name="MapName" select="/REST_File/mapName"/>
        <xsl:choose>
          
        <xsl:when test="contains($MapName,'American Indian')">
            <xsl:element name="ISO_Keyword">boundaries</xsl:element>
        </xsl:when>
        <xsl:when test="contains($MapName,'Census Regions and Divisions')">
            <xsl:element name="ISO_Keyword">boundaries</xsl:element>
        </xsl:when>
        <xsl:when test="contains($MapName,'Census Tracts and Blocks')">
            <xsl:element name="ISO_Keyword">boundaries</xsl:element>
        </xsl:when>
        <xsl:when test="contains($MapName,'Hydrography')">
            <xsl:element name="ISO_Keyword">inlandWaters</xsl:element>
        </xsl:when>
        <xsl:when test="contains($MapName,'Congressional Districts')">
            <xsl:element name="ISO_Keyword">boundaries</xsl:element>
        </xsl:when>
        <xsl:when test="contains($MapName,'Legislative Areas')">
            <xsl:element name="ISO_Keyword">boundaries</xsl:element>
        </xsl:when>
        <xsl:when test="contains($MapName,'Metropolitan and Micropolitan Statistical Areas')">
            <xsl:element name="ISO_Keyword">boundaries</xsl:element>
        </xsl:when>
        <xsl:when test="contains($MapName,'Military Installations')">
            <xsl:element name="ISO_Keyword">intelligenceMilitary</xsl:element>
        </xsl:when>
        <xsl:when test="contains($MapName,'National Park Service Areas')">
            <xsl:element name="ISO_Keyword">Society</xsl:element>
        </xsl:when>
        <xsl:when test="contains($MapName,'Correctional Facilities')">
            <xsl:element name="ISO_Keyword">structure</xsl:element>
        </xsl:when>
        <xsl:when test="contains($MapName,'Places and County Subdivisions')">
            <xsl:element name="ISO_Keyword">boundaries</xsl:element>
        </xsl:when>
        <xsl:when test="contains($MapName,'PUMAs')">
            <xsl:element name="ISO_Keyword">boundaries</xsl:element>
        </xsl:when>
        <xsl:when test="contains($MapName,'School Districts')">
            <xsl:element name="ISO_Keyword">boundaries</xsl:element>
        </xsl:when>
        <xsl:when test="contains($MapName,'States and Counties')">
            <xsl:element name="ISO_Keyword">boundaries</xsl:element>
        </xsl:when>
        <xsl:when test="contains($MapName,'Transportation')">
            <xsl:element name="ISO_Keyword">transportation</xsl:element>
        </xsl:when>
        <xsl:when test="contains($MapName,'Tribal Census Tracts')">
            <xsl:element name="ISO_Keyword">boundaries</xsl:element>
        </xsl:when>
        <xsl:when test="contains($MapName,'Urban Areas')">
            <xsl:element name="ISO_Keyword">boundaries</xsl:element>
        </xsl:when>
        <xsl:when test="contains($MapName,'Economic Consolidated Cities')">
                <xsl:element name="ISO_Keyword">boundaries</xsl:element>
        </xsl:when>
        <xsl:when test="contains($MapName,'Linear and areal hydrography')">
            <xsl:element name="ISO_Keyword">inlandWaters</xsl:element>
        </xsl:when>
        </xsl:choose>
        
    </xsl:template>
</xsl:stylesheet>