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
    
    <xsl:template name="Metadata_Reference_Information">
        <xsl:element name="Metadata_Reference_Information">
            
            <xsl:variable name="URL" select="/REST_File/URL[1]"/>
            <xsl:variable name="FinalURL" select="concat($URL,'export?')"/>
            <xsl:variable name="serviceVersion" select="substring-after($URL,'services/')"/>
            <xsl:variable name="finaleServiceVersion" select="substring-before($serviceVersion,'/')"/>
            <xsl:variable name="finaleServiceVersion2" select="concat($finaleServiceVersion,'_')"></xsl:variable>
            
            <xsl:variable name="mapName" select="/REST_File/mapName"/>
            <xsl:variable name="MHL" select="concat('This is the REST Service for the ', $mapName)"/>
            <xsl:variable name="mapName2" select="replace($mapName,',','_')"/>
            <xsl:variable name="mapName3" select="replace($mapName2,' ','_')"/>
            
            
            <xsl:variable name="finalName" select="concat($finaleServiceVersion2, $mapName3,'.gpm.xml')"/>
            
            <xsl:element name="Metadata_Date">202002</xsl:element>
            <xsl:element name="Metadata_Parent_Identifier"> Series Information File for the 2020 REST Files</xsl:element>
            <xsl:element name="Metadata_Hierarchy_Level">service</xsl:element>
            <xsl:element name="Metadata_Hierarchy_Level_Name"><xsl:value-of select="$MHL"/></xsl:element>
            <xsl:element name="Point_of_Contact">
                <xsl:element name="Contact_Organization">U.S. Department of Commerce, U.S. Census Bureau, Geography Division</xsl:element>
                <xsl:element name="Contact_Electronic_Mail_Address">geo.geography@census.gov</xsl:element>
            </xsl:element>
            <xsl:element name="Metadata_Standard_Name">GeoPlatform Profile of ISO 19115-1</xsl:element>
            <xsl:element name="Metadata_Standard_Version">DRAFT Revision 1</xsl:element>
            <xsl:element name="Metadata_Character_Set">UTF-8</xsl:element>
            <xsl:element name="Metadata_File_Identifier"><xsl:value-of select="$finalName"/></xsl:element>
            <xsl:element name="Metadata_Language">eng</xsl:element>
        </xsl:element>
    </xsl:template>
    
</xsl:stylesheet>