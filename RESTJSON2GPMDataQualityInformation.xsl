<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:gco="http://www.isotc211.org/2005/gco" xmlns:gmd="http://www.isotc211.org/2005/gmd"
    xmlns:gmi="http://www.isotc211.org/2005/gmi" xmlns:gmx="http://www.isotc211.org/2005/gmx"
    xmlns:gsr="http://www.isotc211.org/2005/gsr" xmlns:gss="http://www.isotc211.org/2005/gss"
    xmlns:gts="http://www.isotc211.org/2005/gts" xmlns:gml="http://www.opengis.net/gml/3.2"
    xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:gfc="http://www.isotc211.org/2005/gfc" xmlns:vmf="http://www.altova.com/MapForce/UDF/vmf"
    xmlns:fn="http://www.w3.org/2005/xpath-functions"
    xmlns:grp="http://www.altova.com/Mapforce/grouping"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    exclude-result-prefixes="fn grp vmf xs xsi xsl xd" xmlns="http://www.isotc211.org/2005/gmi">
    
    <xsl:template name="DataQualityInformation">
        <xsl:element name="Data_Quality_Information">
            <xsl:element name="Atribute_Accuracy_Report">
                <xsl:element name="Test_Report">
                    <xsl:element name="Result">Feature attribute information has been examined but has not been fully tested for consistency.</xsl:element>
                </xsl:element>
            </xsl:element>
            <xsl:element name="Non_Quantitative_Attribute_Accuracy_Report">
                <xsl:element name="Test_Report">
                    <xsl:element name="Result">Feature attribute information has been examined but has not been fully tested for consistency.</xsl:element>
                </xsl:element>
            </xsl:element>
            <xsl:element name="Logical_Consistency_Report">
                <xsl:element name="Test_Report">
                    <xsl:element name="Result">The Census Bureau performed spatial data tests for logical consistency of the codes during the compilation
                        of the original Census MAF/TIGER database files.  Most of the codes for geographic entities except states,
                        counties, urban areas, Core Based Statistical Areas (CBSAs), American Indian Areas (AIAs), and congressional
                        districts were provided to the Census Bureau by the USGS, the agency responsible for maintaining the Geographic
                        Names Information System (GNIS)</xsl:element>
                </xsl:element>
            </xsl:element>
            <xsl:element name="Completeness_Report">
                <xsl:element name="Test_Report">
                    <xsl:element name="Result">Data completeness of the TIGER/Line Shapefiles reflects the contents of the Census MAF/TIGER database at
                        the time the TIGER/Line Shapefiles were created.</xsl:element>
                </xsl:element>
            </xsl:element>
            <xsl:element name="Source_Information">
                <xsl:element name="Citation">
                    <xsl:element name="Originator">U.S. Department of Commerce, U.S. Census Bureau, Geography Division</xsl:element>
                    <xsl:element name="Publication_Date">2019</xsl:element>
                    <xsl:element name="Title">Census MAF/TIGER database</xsl:element>
                </xsl:element>
               
            </xsl:element>
             <xsl:element name="Type_of_Source_Media">online</xsl:element>
            <xsl:element name="Process_Step">
                <xsl:element name="Process_Description">
                    TIGER/Line Shapefiles are extracted from the Census MAF/TIGER
                    database by nation, state, county, and entity. Census MAF/TIGER data for all of the
                    aforementioned geographic entities are then distributed among the shapefiles each
                    containing attributes for line, polygon, or landmark geographic
                    data.
                </xsl:element>
                <xsl:element name="Process_Date">2019</xsl:element>
            </xsl:element>
        </xsl:element>
       
    </xsl:template>
    
</xsl:stylesheet>