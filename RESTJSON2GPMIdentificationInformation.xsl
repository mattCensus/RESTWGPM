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
    <xsl:import href="../REST2GPM/RESTJSON2GPMAbstract.xsl"/>
    <xsl:import href="../REST2GPM/RESTJSON2GPMKeywords.xsl"/>
    <xsl:import href="../REST2GPM/RESTJSON2GPMMapName.xsl"/>
    
    <xsl:template name="IdInfo">
        <xsl:element name="Identification_Information">
            <xsl:element name="Citation">
                <xsl:element name="Originator">U.S. Department of Commerce, U.S. Census Bureau, Geography Division</xsl:element>
                <xsl:element name="Publication_Date">2020</xsl:element>
                <xsl:call-template name="mapName"/>
                <xsl:element name="Geospatial_Data_Presentation_Form">Web Mapping Service</xsl:element>
            </xsl:element>
            <xsl:element name="Description">
                <xsl:call-template name="abstract"/>
                <xsl:text></xsl:text>
                <xsl:element name="Purpose">To provide a way for Web clients to communicate with geographic
                    information system (GIS) servers through Representational State Transfer (REST) technology.
                </xsl:element>
            </xsl:element>
            <xsl:element name="Time_Period_of_Content">
                <xsl:element name="Calendar_Date">20200101</xsl:element>
                <xsl:element name="Currentness_Reference">ground condition</xsl:element>
            </xsl:element>
            <xsl:element name="Status">
                <xsl:element name="Progress">Completed</xsl:element>
                <xsl:element name="Maintenance_and_Update_Frequency">Annually</xsl:element>
            </xsl:element>
            <xsl:element name="Spatial_Domain">
                <xsl:element name="Bounding_Coordinates">
                    <xsl:element name="West_Bounding_Coordinate">-170.758411</xsl:element>
                    <xsl:element name="East_Bounding_Coordinate">145.794980</xsl:element>
                    <xsl:element name="North_Bounding_Coordinate">71.299040</xsl:element>
                    <xsl:element name="South_Bounding_Coordinate">-14.375089</xsl:element>
                </xsl:element>
            </xsl:element>
           <xsl:call-template name="Mainkeywords"/>
            <xsl:element name="Constraints">
                <xsl:element name="Access_Constraints">unrestricted</xsl:element>
                <xsl:element name="Use_Constraints">trademark</xsl:element>
                <xsl:element name="Use_Constraints">otherRestrictions</xsl:element>
                <xsl:element name="Other_Constraints">Use Constraints: These products are free to use in a product or
                    publication, however acknowledgement must be given to the U.S. Census Bureau as the source. WMS
                    boundary files should not be used for geographic analysis including area or perimeter calculation.
                    Files should not be used for geocoding addresses. Files should not be used for determining precise
                    geographic area relationships.</xsl:element>
            </xsl:element>
            
            <xsl:element name="Point_of_Contact">
                <xsl:element name="Contact_Organization">U.S. Department of Commerce, U.S. Census Bureau, Geography Division</xsl:element>
                <xsl:element name="Contact_Electronic_Mail_Address">geo.geography@census.gov</xsl:element>
            </xsl:element>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>