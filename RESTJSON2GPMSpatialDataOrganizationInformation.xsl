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
    
    <xsl:template name="Spatial_Data_Organization_Information">
        <xsl:element name="Spatial_Data_Organization_Information">
            <xsl:element name="Indirect_Spatial_Reference">Federal Information Processing Series (FIPS), Geographic Names
            Information System (GNIS), and feature names.</xsl:element>
            <xsl:element name="Direct_Spatial_Reference_Method">Vector</xsl:element>
            <xsl:element name="Topology_Level">fullPlanarGraph</xsl:element>
            <xsl:element name="SDTS_Terms_Description">
                <xsl:element name="SDTS_Point_and_Vector_Object_Type">curve</xsl:element>
                <xsl:element name="Point_and_Vector_Object_Count"><xsl:value-of select="/REST_File/maxRecordCount[1]"/></xsl:element>
            </xsl:element>
        </xsl:element>
    </xsl:template>
    
</xsl:stylesheet>