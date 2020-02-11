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
    <xsl:import href="../REST2GPM/RESTJSON2GPMExportMap.xsl"/>
    <xsl:import href="../REST2GPM/RESTJSON2GPMIdentify.xsl"/>
    <xsl:import href="../REST2GPM/RESTJSON2GPMQueryDomains.xsl"/>
    <xsl:import href="../REST2GPM/RESTJSON2GPMFind.xsl"/>
    
    <xsl:template name="Computer_Service_Information">
        <xsl:element name="Computer_Service_Information">
            <xsl:element name="Service_Type">REST Service</xsl:element>
            <xsl:element name="Service_Type_Version"><xsl:value-of select="/REST_File/currentVersion"/></xsl:element>
            <xsl:element name="Coupling_Type">loose</xsl:element>
            <xsl:call-template name="ExportMap"/>
             <xsl:call-template name="Identify"/>
             <xsl:call-template name="QueryDomains"/>
              <xsl:call-template name="Find"/>
            <!--  -->
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>