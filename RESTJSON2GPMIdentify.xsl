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
    
    <xsl:template name="Identify">
        <xsl:element name="Contains_Operations">
            <xsl:element name="Operation_Name">Identify</xsl:element>
            <xsl:element name="DCP">WebServices</xsl:element>
            <xsl:element name="Operation_Description">discovers features at a geographic location</xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">f</xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">The response format. The default response format is html.</xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">geometry </xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description"> The geometry to identify on </xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">geometryType </xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">The type of geometry specified by the geometry parameter. The geometry type could be a point,
                    line, polygon, or an envelope.  </xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">sr </xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">The well-known ID of the spatial reference of the input and output geometries as well as the
                    mapExtent.  </xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">layerDefs </xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">filters the features of individual layers in the exported map by specifying definition
                    expressions for those layers.  </xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">time </xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">The time instant or the time extent of the features to be identified.  </xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">layerTimeOptions </xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">indicates whether or not the layer should use the
                    time extent specified by the time parameter or not, whether to draw the layer features
                    cumulatively or not and the time offsets for the layer.   </xsl:element>
            </xsl:element> 
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">layers </xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">The layers to perform the identify operation on.
                    There are three ways to specify which layers to identify on: top, visible and all.
                </xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">tolerance </xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">The distance in screen pixels from the specified
                    geometry within which the identify should be performed. The value for the tolerance is an
                    integer.  </xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">mapExtent</xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">The extent or bounding box of the map currently being
                    viewed. Unless the sr parameter has been specified, the mapExtent is assumed to be in the
                    spatial reference of the map.  </xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">imageDisplay </xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">The screen image display parameters (width, height,
                    and DPI) of the map being currently viewed.  </xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">returnGeometry </xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">If true, the resulting set will include the
                    geometries associated with each result. The default is true.  </xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">maxAllowableOffset </xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">Specifies the maximum allowable offset to be used
                    for generalizing geometries returned by the identify operation. The maxAllowableOffset is
                    in the units of the sr. If sr is not specified, maxAllowableOffset is assumed to be in the
                    unit of the spatial reference of the map.  </xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">geometryPrecision </xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">This option can be used to specify the number of
                    decimal places in the response geometries returned by the identify operation. This applies
                    to X and Y values only (not m or z-values).  </xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">dynamicLayers </xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">Reorders layers and change the layer data source.
                    dynamicLayers can also be used to add new layer that was not defined in the map used to
                    create the map service. The new layer should have its source pointing to one
                    of the registered workspaces that was defined at the time the map service was created.
                </xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">returnZ </xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description"> If true, Z (height( values will be included in the
                    results if the features have Z values. Otherwise, Z values are not returned. The default is
                    false.  </xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">returnM </xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description"> If true, M values will be included in the results
                    if the features have M values (distance along a linestring or edge).  </xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">gdbVersion </xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">Switches map layers to point to an alternate geodatabase version.  </xsl:element>
            </xsl:element>
        
        <xsl:element name="Operation_Parameters">
            <xsl:element name="Parameter_Name">returnUnformattedValues </xsl:element>
            <xsl:element name="Parameter_Direction">out</xsl:element>
            <xsl:element name="Parameter_Description">If true, the values in the result will not be formatted
                i.e. numbers will returned as is and dates will be returned as epoch values.  </xsl:element>
        </xsl:element>
        <xsl:element name="Operation_Parameters">
            <xsl:element name="Parameter_Name">returnFieldName </xsl:element>
            <xsl:element name="Parameter_Direction">out</xsl:element>
            <xsl:element name="Parameter_Description">If true, field names will be returned instead of field aliases.  </xsl:element>
        </xsl:element>
        <xsl:element name="Operation_Parameters">
            <xsl:element name="Parameter_Name">datumTransformations </xsl:element>
            <xsl:element name="Parameter_Direction">out</xsl:element>
            <xsl:element name="Parameter_Description">Applies one or more datum transformations to the map
                when sr is different than the map service's spatial reference. It is an array of
                transformation elements.  </xsl:element>
        </xsl:element>
        <xsl:element name="Operation_Parameters">
            <xsl:element name="Parameter_Name">mapRangeValues </xsl:element>
            <xsl:element name="Parameter_Direction">out</xsl:element>
            <xsl:element name="Parameter_Description">Filters features in the exported map from all layer that
                are within the specified range instant or extent.  </xsl:element>
        </xsl:element>
        <xsl:element name="Operation_Parameters">
            <xsl:element name="Parameter_Name">layerRangeValues </xsl:element>
            <xsl:element name="Parameter_Direction">out</xsl:element>
            <xsl:element name="Parameter_Description">Filters features for each individual layer that are
                within the specified range instant or extent.  </xsl:element>
        </xsl:element>
        <xsl:element name="Operation_Parameters">
            <xsl:element name="Parameter_Name">layerParameterValues </xsl:element>
            <xsl:element name="Parameter_Direction">out</xsl:element>
            <xsl:element name="Parameter_Description">Filters the features of individual layers in the
                exported map by specifying value(s) to an array of pre-authored parameterized filters for
                those layers. When value is not specified for any parameter in a request, the default value,
                that is assigned during authoring time, gets used instead.
            </xsl:element>
        </xsl:element>
            <xsl:element name="Connect_Point">
                <xsl:variable name="URL" select="/REST_File/URL[1]"/>
                <xsl:variable name="FinalURL" select="concat($URL,'/identify?')"/>
                <xsl:variable name="mapName" select="/REST_File/description"/>
                <xsl:variable name="serviceVersion" select="substring-after($URL,'services/')"/>
                <xsl:variable name="finaleServiceVersion" select="substring-before($serviceVersion,'/')"></xsl:variable>
                <xsl:variable name="finalName" select="concat($finaleServiceVersion, $mapName)"/>
                
                <xsl:element name="CP_Link"><xsl:value-of select="$FinalURL"/></xsl:element>
                <xsl:element name="Protocol">https </xsl:element>
                <xsl:element name="Resource_Name"><xsl:value-of select="$finalName"/></xsl:element>
                <xsl:element name="Resource_Description">This is the identify URL.</xsl:element>
                
           
        </xsl:element>
      </xsl:element>
    </xsl:template>
    
</xsl:stylesheet>