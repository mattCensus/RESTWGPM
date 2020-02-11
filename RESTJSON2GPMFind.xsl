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
    
    <xsl:template name="Find">
        <xsl:element name="Contains_Operations">
            <xsl:element name="Operation_Name">Find</xsl:element>
            <xsl:element name="DCP">WebServices</xsl:element>
            <xsl:element name="Operation_Description">finds the value, feature ID, field name, layer ID, layer
                name, geometry, geometry type, and attributes in the form of name-value pairs of the specified
                search string.</xsl:element>
                
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">f </xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">The response format. The default response format is
                    html.  </xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">searchText </xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">The search string. This is the text that is searched
                    across the layers and fields the user specifies.  </xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">contains </xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">If false, the operation searches for an exact match
                    of the searchText string. An exact match is case sensitive. Otherwise, it searches for a
                    value that contains the searchText provided. This search is not case sensitive. The default
                    is true.  </xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">searchFields </xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">The names of the fields to search. The fields are
                    specified as a comma-separated list of field names. If this parameter is not specified,
                    all fields are searched.  </xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">sr </xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">The well-known ID of the spatial reference of the
                    output geometries. If sr is not specified, the output geometries are returned in the
                    spatial reference of the map.  </xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">layerDefs </xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">filtered the features of individual layers in the
                    exported map by specifying definition expressions for those layers. Definition expression
                    for a layer that is published with the service will be always honored.   </xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">layers </xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description"> The layers to perform the find operation on. The
                    layers are specified as a comma-separated list of layer ids.  </xsl:element>
            </xsl:element> 
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">returnGeometry </xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">If true, the resultset includes the geometries
                    associated with each result. The default is true.  </xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">maxAllowableOffset </xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">This option can be used to specify the maximum
                    allowable offset to be used for generalizing geometries returned by the find operation. 
                </xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">geometryPrecision </xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">Specifies the number of decimal places in the
                    response geometries returned by the find operation. This applies to X and Y values only
                    (not m or z values).  </xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">dynamicLayers </xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">modifies the data source of existing layers in the
                    current map service or to add new layers  </xsl:element>
            </xsl:element> 
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">returnZ </xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description"> If true, Z values will be included in the results
                    if the features have Z values. Otherwise, Z values are not returned. The default is true.
                </xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">returnM </xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">If true, M values will be included in the results if
                    the features have M values. Otherwise, M values are not returned. The default is false.  </xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">gdbVersion </xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">Switch map layers to point to an alternate
                    geodatabase version.  </xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">returnUnformattedValues </xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">If true, the values in the result will not be
                    formatted i.e. numbers will returned as is and dates will be returned as epoch values.  </xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">returnFieldName </xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">If true, field names will be returned instead of 
                    field aliases.  </xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">datumTransformations </xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description"> Applies one or more datum transformations to the
                    map when sr is different than the map service's spatial reference. It is an array of
                    transformation elements.  </xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">mapRangeValues </xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">Allows you to filter features in the exported map
                    from all layer that are within the specified range instant or extent.  </xsl:element>
            </xsl:element> 
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">layerRangeValues </xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">Allows you to filter features for each individual
                    layer that are within the specified range instant or extent.  </xsl:element>
            </xsl:element>
            <xsl:element name="Operation_Parameters">
                <xsl:element name="Parameter_Name">layerParameterValues </xsl:element>
                <xsl:element name="Parameter_Direction">out</xsl:element>
                <xsl:element name="Parameter_Description">Allows you to filter the features of individual
                    layers in the exported map by specifying value(s) to an array of pre-authored
                    parameterized filters for those layers. When value is not specified for any parameter in
                    a request, the default value, that is assigned during authoring time, gets used instead. 
                </xsl:element>
            </xsl:element> 
            <xsl:element name="Connect_Point">
                <xsl:variable name="URL" select="/REST_File/URL[1]"/>
                <xsl:variable name="FinalURL" select="concat($URL,'/find?')"/>
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