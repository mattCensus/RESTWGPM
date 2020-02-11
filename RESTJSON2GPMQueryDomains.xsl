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
    
    <!--  <xsl:element name="Operation_Parameters">
        <xsl:element name="Parameter_Name"> </xsl:element>
        <xsl:element name="Parameter_Direction">out</xsl:element>
        <xsl:element name="Parameter_Description">  </xsl:element>
        </xsl:element> -->
    
    <xsl:template name="QueryDomains">
        <xsl:element name="Contains_Operations">
        <xsl:element name="Operation_Name">QueryDomains</xsl:element>
        <xsl:element name="DCP">WebServices</xsl:element>
        <xsl:element name="Operation_Description">returns full domain information for the domains referenced by
            the layers in the service. This operation is performed on a map service resource.
            The operation takes an array of layer IDs and returns the set of domains referenced by the layers.
        </xsl:element>
        <xsl:element name="Operation_Parameters">
            <xsl:element name="Parameter_Name">f </xsl:element>
            <xsl:element name="Parameter_Direction">out</xsl:element>
            <xsl:element name="Parameter_Description">The response format. The default response format is html.</xsl:element>
        </xsl:element>
        <xsl:element name="Operation_Parameters">
            <xsl:element name="Parameter_Name">layers </xsl:element>
            <xsl:element name="Parameter_Direction">out</xsl:element>
            <xsl:element name="Parameter_Description">An array of layers.  </xsl:element>
        </xsl:element>
        <xsl:element name="Connect_Point">
            <xsl:variable name="URL" select="/REST_File/URL[1]"/>
            <xsl:variable name="FinalURL" select="concat($URL,'/queryDomains?')"/>
            <xsl:variable name="mapName" select="/REST_File/description"/>
            <xsl:variable name="serviceVersion" select="substring-after($URL,'services/')"/>
            <xsl:variable name="finaleServiceVersion" select="substring-before($serviceVersion,'/')"></xsl:variable>
            <xsl:variable name="finalName" select="concat($finaleServiceVersion, $mapName)"/>
            
            <xsl:element name="CP_Link"><xsl:value-of select="$FinalURL"/></xsl:element>
            <xsl:element name="Protocol">https </xsl:element>
            <xsl:element name="Resource_Name"><xsl:value-of select="$finalName"/></xsl:element>
            <xsl:element name="Resource_Description">This is the queryDomains URL.</xsl:element>
            
        </xsl:element>
        </xsl:element>
        
</xsl:template>
    
</xsl:stylesheet>