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
    
    <xsl:template name="SpatialReferenceInformation">
        <xsl:element name="Spatial_Reference_Information">
            <xsl:for-each select="/REST_File/datumTransformations/geoTransforms/latestWkid">
                <xsl:element name="Map_Projection">
                    <xsl:variable name="ProjName" select="."/>
                   <!--   <xsl:comment>projName = <xsl:value-of select="$ProjName"/></xsl:comment>-->
                    
                    <xsl:choose>
                        <xsl:when test="contains($ProjName,'CRS:84')">
                            <xsl:element name="Map_Projection">
                                <xsl:element name="Map_Projection_Name">WGS 84 longitude-latitude</xsl:element>
                                <xsl:element name="EPSG_Reference">
                                    <xsl:element name="EPSG_Code">OGC:CRS:</xsl:element>
                                    <xsl:element name="EPSG_Code_Space">http://www.opengis.net/def/crs/OGC/1.3/CRS84</xsl:element>
                                    <xsl:element name="EPSG_Version">1.3</xsl:element>
                                </xsl:element>
                            </xsl:element>  
                        </xsl:when>
                        <xsl:when test="contains($ProjName,'3857')">
                            <xsl:element name="Map_Projection">
                                <xsl:element name="Map_Projection_Name">Web Mercator</xsl:element>
                                <xsl:element name="EPSG_Reference">
                                    <xsl:element name="EPSG_Code">EPSG:3857</xsl:element>
                                    <xsl:element name="EPSG_Code_Space">http://www.epsg-registry.org/export.htm?gml=urn:ogc:def:crs:EPSG:3857</xsl:element>
                                    <xsl:element name="EPSG_Version">9.3, 2018-04-20</xsl:element>
                                </xsl:element>
                            </xsl:element>
                        </xsl:when>
                        <xsl:when test="contains($ProjName,'4326')">
                            <xsl:element name="Map_Projection">
                                <xsl:element name="Map_Projection_Name">WGS 84</xsl:element>
                                <xsl:element name="EPSG_Reference">
                                    <xsl:element name="EPSG_Code">EPSG:4326</xsl:element>
                                    <xsl:element name="EPSG_Code_Space">http://www.epsg-registry.org/export.htm?gml=urn:ogc:def:crs:EPSG::4326</xsl:element>
                                    <xsl:element name="EPSG_Version">9.3, 2018-04-20</xsl:element>
                                </xsl:element>
                            </xsl:element>
                        </xsl:when>
                        <xsl:when test="contains($ProjName,'102100')">
                            <xsl:element name="Map_Projection">
                                <xsl:element name="Map_Projection_Name">ESRI Web Mercator definition</xsl:element>
                                <xsl:element name="EPSG_Reference">
                                    <xsl:element name="EPSG_Code">ESRI:102100</xsl:element>
                                    <xsl:element name="EPSG_Code_Space">https://spatialreference.org/ref/sr-org/6928/</xsl:element>
                                    <xsl:element name="EPSG_Version">Unknown</xsl:element>
                                </xsl:element>
                            </xsl:element>
                        </xsl:when>
                        <xsl:when test="contains($ProjName,'1241')">
                            <xsl:element name="Map_Projection_Name">NAD27 to NAD83 (1) </xsl:element>
                            <xsl:element name="EPSG_Reference">
                                <xsl:element name="EPSG_Code">EPSG::1241</xsl:element>
                                <xsl:element name="EPSG_Code_Space">https://spatialreference.org/ref/sr-org/6928/</xsl:element>
                                <xsl:element name="EPSG_Version">9.8.6</xsl:element>
                            </xsl:element>
                        </xsl:when>
                        <xsl:when test="contains($ProjName,'1188')">
                            <xsl:element name="Map_Projection_Name">NAD83 to WGS 84 (1) </xsl:element>
                            <xsl:element name="EPSG_Reference">
                                <xsl:element name="EPSG_Code">EPSG::1188</xsl:element>
                                <xsl:element name="EPSG_Code_Space">https://spatialreference.org/ref/sr-org/6928/</xsl:element>
                                <xsl:element name="EPSG_Version">9.8.6</xsl:element>
                            </xsl:element>
                           </xsl:when>
                    </xsl:choose>
                </xsl:element>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>