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
    
   <xsl:template name="ExportMap">
        <xsl:element name="Contains_Operations">
            <xsl:element name="Operation_Name">Export Map</xsl:element>
            <xsl:element name="DCP">WebServices</xsl:element>
            <xsl:element name="Operation_Description">This operation exports a map image resource.</xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">bbox</xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">The extent (bounding box) of the exported image. Unless the
                    bboxSR parameter has been specified, the bbox is assumed to be in the spatial reference of the map.
                </xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">bbSR</xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">The spatial reference of the bbox. The spatial reference can be specified as either a well-known ID or as a
                    spatial reference JSON object.
                </xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">layers</xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">Determines which layers appear on the exported map. There are four ways to specify which layers
                are shown:show, hide, include and exclude.</xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">layerDefs</xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">Allows you to filter the features of individual layers in the exported map by specifying
                    definition expressions for those layers. Definition expression for a layer that is published with the service always
                    will be honored.</xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">size</xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">The size (width and height) of the exported image in pixels. If the size is not specified, an
                image with a default size of 400 by 400 pixels will be exported.</xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">imageSR</xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">The spatial reference of the exported image.</xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">format</xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">The format of the exported image. The default format is .png.</xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">transparent</xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">If true, the image will be exported with the background color of the map set as its transparent
                    color. The default is false. Only the .png and .gif formats support transparency. Internet Explorer 6 does not
                    display transparency correctly for png24 image formats.</xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">dpi</xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">The device resolution of the exported image (dots per inch). If the dpi is not specified, an
                image with a default dpi of 96 will be exported.</xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">time</xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">The time instant or time extent of the exported map image.</xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">layerTimeOptions</xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">The time options per layer. Users can indicate whether or not the layer should use the time extent
                    specified by the time parameter or not, whether to draw the layer features cumulatively or not and the time offsets
                    for the layer. </xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">dynamicLayers</xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">modifies the layer drawing order, change layer drawing info, and change layer data source version
                    for this request. New layers (dataLayer) can also be added to the dynamicLayers based on the map service registered
                    workspaces. </xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">gdbVersion</xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">Use this parameter to specify the geodatabase version.</xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">mapScale</xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">exports a map image at a specific scale, with the map centered around the center of the specified
                bounding box (bbox).</xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">rotation</xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">exports a map image rotated at a specific angle, with the map centered around the center of the
                specified bounding box (bbox). It could be positive or negative number.</xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">datumTransformations</xsl:element>
                    <xsl:element name="Parameter_Direction">out</xsl:element>
                    <xsl:element name="Parameter_Description">applies one or more datum transformations to the map when imageSR is different than the map
                    service's spatial reference. It is an array of transformation elements.</xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">layerParameterValues</xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">filters the features of individual layers in the exported map by specifying a value or values to
                an array of pre-authored parameterized filters for those layers</xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">mapRangeValues</xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">filters features in the exported map from all layers that are within the specified range instant or
                extent.</xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">layerRangeValues</xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">filters the features of individual layers in the exported map by specifying a value or values to
                an array of pre-authored parameterized filters for those layers.</xsl:element>
            </xsl:element>
            <xsl:element name="Connect_Point">
                <xsl:variable name="URL" select="/REST_File/URL[1]"/>
                <xsl:variable name="FinalURL" select="concat($URL,'export?')"/>
                <xsl:variable name="mapName" select="/REST_File/description"/>
                <xsl:variable name="serviceVersion" select="substring-after($URL,'services/')"/>
                <xsl:variable name="finaleServiceVersion" select="substring-before($serviceVersion,'/')"></xsl:variable>
                <xsl:variable name="finalName" select="concat($finaleServiceVersion, $mapName)"/>
                
                <xsl:element name="CP_Link"><xsl:value-of select="$FinalURL"/></xsl:element>
                <xsl:element name="Protocol">https </xsl:element>
                <xsl:element name="Resource_Name"><xsl:value-of select="$finalName"/></xsl:element>
                <xsl:element name="Resource_Description">This is the export URL.</xsl:element>
                    
            </xsl:element>
            
        </xsl:element>
    </xsl:template>
    
</xsl:stylesheet>