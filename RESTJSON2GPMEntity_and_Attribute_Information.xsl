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
   
    <!--  <Feature_Catalogue_Description>
        <FC_Title>Feature Catalog for the 2016 All Roads County-based Shapefile</FC_Title>
        <Included_With_Dataset>No</Included_With_Dataset>
        <Feature_Types>All Roads</Feature_Types>
        <FC_Online_Linkage>https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/TIGER2016/roads/tl_2016_roads.shp.ea.iso.xml</FC_Online_Linkage>
        </Feature_Catalogue_Description> -->
    
    <xsl:template name="EntityAttributeInformation">
        <xsl:element name="Entity_and_Attribute_Information">
            <xsl:choose>
                <xsl:when test="/REST_File/layers/name">
                    <!--  <xsl:comment>first for physical</xsl:comment>-->
                    <xsl:for-each select="/REST_File/layers">
                        <xsl:variable name="keyword" select="./name[1]"/>
                        <xsl:if test="not(contains($keyword,'Labels'))">
                            
                            <xsl:element name="Feature_Catalogue_Description">
                                
                                <xsl:call-template name="knownTitles">
                                    <xsl:with-param name="keywordPass" select="$keyword"/>
                                </xsl:call-template>
                                
                                <xsl:element name="Included_With_Dataset">No</xsl:element>
                                <!-- <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/</xsl:element>
                        --> 
                                <xsl:call-template name="knownURLS">
                                    <xsl:with-param name="keywordPass" select="$keyword"/>
                                </xsl:call-template>
                            </xsl:element>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:when>
                
            </xsl:choose>
            
            
            
        </xsl:element>
    </xsl:template>
    
    <xsl:template name="knownTitles">
        <xsl:param name="keywordPass"/>
         
        
        
         <xsl:choose>
             <xsl:when test="contains($keywordPass,'Counties')">
                 <xsl:element name="FC_Title">Feature Catalog for the Current County and Equivalent National Shapefile</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'States')">
                 <xsl:element name="FC_Title">Feature Catalog for the Current State and Equivalent National</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Micropolitan Statistical Areas')">
                 <xsl:element name="FC_Title">Feature Catalog for the Current Metropolitan Statistical Area/Micropolitan Statistical Area (CBSA) National</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Metropolitan Statistical Areas')">
                 <xsl:element name="FC_Title">Feature Catalog for the Current Metropolitan Statistical Area/Micropolitan Statistical Area (CBSA) National</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Metropolitan Divisions')">
                 <xsl:element name="FC_Title">Feature Catalog for the Current Metropolitan Division National</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Combined Statistical Areas')">
                 <xsl:element name="FC_Title">Feature Catalog for the Current Combined Statistical Area (CSA) National </xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Micropolitan New England City and Town Areas')">
                 <xsl:element name="FC_Title">Feature Catalog for the Current New England City and Town Area (NECTA) National</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Metropolitan New England City and Town Areas')">
                 <xsl:element name="FC_Title">Feature Catalog for the Current New England City and Town Area (NECTA) National</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'New England City and Town Area Divisions')">
                 <xsl:element name="FC_Title">Feature Catalog for the Current NECTA Division National </xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Combined New England City and Town Areas')">
                 <xsl:element name="FC_Title">Feature Catalog for the Current Combined New England City and Town Area (CNECTA) National</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Urban Clusters')">
                 <xsl:element name="FC_Title">Feature Catalog for the 2010 Census Urban Area National</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Census Urbanized Areas')">
                 <!--  <xsl:comment>UA!!!!!!!!!!!!!!!</xsl:comment>-->
                 <xsl:element name="FC_Title">Feature Catalog for the 2010 Census Urban Area National</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'State Legislative Districts - Lower')">
                 <xsl:element name="FC_Title">Feature Catalog for the Current State Legislative District (SLD) Lower Chamber State-based</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'State Legislative Districts - Upper')">
                 <xsl:element name="FC_Title">Feature Catalog for the Current State Legislative District (SLD) Upper Chamber State-based</xsl:element>
              </xsl:when>
             <xsl:when test="contains($keywordPass,'Congressional Districts')">
                 <xsl:element name="FC_Title">Feature Catalog for the 116th Congressional District National</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Alaska Native Regional Corporations')">
                 <xsl:element name="FC_Title">Feature Catalog for the Current Alaska Native Regional Corporation (ANRC) State-based</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Census Designated Places')">
                 <xsl:element name="FC_Title">Feature Catalog for the Current Place State-based</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Incorporated Places')">
                 <xsl:element name="FC_Title">Feature Catalog for the Current Place State-based</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Consolidated Cities')">
                 <xsl:element name="FC_Title">Feature Catalog for the Current Consolidated City State-based</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Subbarrios')">
                 <xsl:element name="FC_Title">Feature Catalog for the Current Subbarrio (Subminor Civil Division)</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'County Subdivisions')">
                 <xsl:element name="FC_Title">Feature Catalog for the Current County Subdivision State-based</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Estates')">
                 <xsl:element name="FC_Title">Feature Catalog for the Current Estate State-based Shapefile (U.S. Virgin Islands only)</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Elementary School Districts')">
                 <xsl:element name="FC_Title">Feature Catalog for the Current Elementary School Districts State-based</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Secondary School Districts')">
                 <xsl:element name="FC_Title">Feature Catalog for the Current Secondary School Districts Shapefile State-based</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Unified School Districts')">
                 <xsl:element name="FC_Title">Feature Catalog for the Current Unified School Districts Shapefile State-based</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'2010 Census Blocks')">
                 <xsl:element name="FC_Title">Feature Catalog for the 2010 Census Block State-based</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Census Block Groups')">
                 <xsl:element name="FC_Title">Feature Catalog for the Current Block Group State-based</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Census Tracts')">
                 <xsl:element name="FC_Title">Feature Catalog for the Current Census Tract State-based</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Tribal Block Groups')">
                 <xsl:element name="FC_Title">Feature Catalog for the Current Tribal Block Group National </xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Tribal Census Tracts')">
                 <xsl:element name="FC_Title">Feature Catalog for the Current Tribal Census Tract National </xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'ZIP Code Tabulation Areas')">
                 <xsl:element name="FC_Title">Feature Catalog for the 2010 Census 5-Digit ZIP Code Tabulation Area (ZCTA5) National</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Public Use Microdata Areas')">
                 <xsl:element name="FC_Title">Feature Catalog for the 2010 Census Public Use Microdata Area (PUMA) State-based</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Military Installations')">
                 <xsl:element name="FC_Title">Feature Catalog for the Military Installation National Shapefile</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Colleges and Universities')">
                 <xsl:element name="FC_Title">Feature Catalog for the Area Landmark State-based Shapefile</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Correctional Facilities')">
                 <xsl:element name="FC_Title">Feature Catalog for the Area Landmark State-based Shapefile</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'National Park Service Areas')">
                 <xsl:element name="FC_Title">Feature Catalog for the Area Landmark State-based Shapefile</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Glaciers')">
                 <xsl:element name="FC_Title">Feature Catalog for the 2019 Area Hydrography County-based Shapefile</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Areal Hydrography')">
                 <xsl:element name="FC_Title">Feature Catalog for the 2019 Area Hydrography County-based Shapefile</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Linear Hydrography')">
                 <xsl:element name="FC_Title">Feature Catalog for the 2019 Linear Hydrography County-based Shapefile</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Railroads')">
                 <xsl:element name="FC_Title">Feature Catalog for the Rails National Shapefile</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Local Roads')">
                 <xsl:element name="FC_Title">Feature Catalog for the 2019 All Roads County-based Shapefile</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Secondary Roads')">
                 <xsl:element name="FC_Title">Feature Catalog for the Primary and Secondary Roads State-based Shapefile</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Primary Roads')">
                 <xsl:element name="FC_Title">Feature Catalog for the Primary and Secondary Roads State-based Shapefile</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Economic Places')">
                 <xsl:element name="FC_Title">Feature Catalog for the 2012 Economic Census Place State-based Shapefile</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Voting Districts')">
                 <xsl:element name="FC_Title">Feature Catalog for the 2012 2010 Census Voting District State-based (VTD) Shapefile</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Joint-Use Areas')">
                 <xsl:element name="FC_Title">Feature Catolog for the 2019 American Indian Joint-Use Areas</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Alaska Native Village Statistical Areas')">
                 <xsl:element name="FC_Title">Feature Catolog for the 2019 Alaska Native Village Statistical Areas</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Federal American Indian Reservations')">
                 <xsl:element name="FC_Title">Feature Catalog for the Federal American Indian Reservations</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Hawaiian Home Lands')">
                 <xsl:element name="FC_Title">Feature Attributes for the 2019 Hawaiian Home Lands</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'MAF/TIGER Feature Class Codes')">
                 <xsl:element name="FC_Title">Feature Catolog for the 2019 MAF/TIGER Feature Class Codes</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Off-Reservation Trust Lands')">
                 <xsl:element name="FC_Title">Feature Catolog for the 2019 Off-Reservation Trust Lands</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Oklahoma Tribal Statistical Areas')">
                 <xsl:element name="FC_Title">Feature Catolog for the 2019 Oklahoma Tribal Statistical Areas</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'SDTSA')">
                 <xsl:element name="FC_Title">Feature Catolog for the 2019 State Designated Tribal Statistical Areas (SDTSA) </xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'State American Indian Reservations')">
                 <xsl:element name="FC_Title">Feature Catolog for the 2019 State American Indian Reservations</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Tribal Designated Statistical Areas')">
                 <xsl:element name="FC_Title">Feature Catolog for the Tribal Designated Statistical Areas</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Census Regions')">
                 <xsl:element name="FC_Title">Feature Attributes for the 2019 Census Regions</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Census Divisions')">
                 <xsl:element name="FC_Title">Feature Attributes for the Census Divisions</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'State Designated Tribal Statistical Areas')">
                 <xsl:element name="FC_Title">Feature Catolog for the 2019 State Designated Tribal Statistical Areas (SDTSA) </xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Tribal Subdivisions')">
                 <xsl:element name="FC_Title">Feature Catolog for the 2019 Tribal Subdivisions</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Urban Growth Areas')">
                 <xsl:element name="FC_Title">Feature Catalog for the 2010 Census Urban Growth Area (UGA) State-based Shapefile</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Traffic Analysis Zones')">
                 <xsl:element name="FC_Title">Feature Catolog for the 2010 Census Traffic Analysis Zone (TAZ) State-based Shapefile</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Traffic Analysis Districts')">
                 <xsl:element name="FC_Title">Feature Catalog for 2011 2010 Census Traffic Analysis District (TAD) National Shapefile</xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'American Indian, Alaska Native, and Native Hawaiian Areas')">
                 <xsl:variable name="FCTitle" select="concat('Feature Catalog for the 2019 ', $keywordPass )"/>
                 <xsl:element name="FC_Title"><xsl:value-of select="$FCTitle"></xsl:value-of></xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'ACS 2019')">
                 <xsl:variable name="FCTitle" select="concat('Feature Catalog for the 2019 ', $keywordPass )"/>
                 <xsl:element name="FC_Title"><xsl:value-of select="$FCTitle"></xsl:value-of></xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'ACS 2018')">
                 <xsl:variable name="FCTitle" select="concat('Feature Catalog for the 2018 ', $keywordPass )"/>
                 <xsl:element name="FC_Title"><xsl:value-of select="$FCTitle"></xsl:value-of></xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Census 2010')">
                 <xsl:variable name="FCTitle" select="concat('Feature Catalog for the Census 2010 ', $keywordPass )"/>
                 <xsl:element name="FC_Title"><xsl:value-of select="$FCTitle"></xsl:value-of></xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Regional Offices')">
                 <xsl:variable name="FCTitle" select="concat('Feature Catalog for the 2019 ', $keywordPass )"/>
                 <xsl:element name="FC_Title"><xsl:value-of select="$FCTitle"></xsl:value-of></xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'New England City and Town Areas')">
                 <xsl:variable name="FCTitle" select="concat('Feature Catalog for the 2019 ', $keywordPass )"/>
                 <xsl:element name="FC_Title"><xsl:value-of select="$FCTitle"></xsl:value-of></xsl:element>
             </xsl:when>
             <xsl:when test="contains($keywordPass,'Tribal Statistical Areas')">
                 <xsl:variable name="FCTitle" select="concat('Feature Catalog for the 2019 ', $keywordPass )"/>
                 <xsl:element name="FC_Title"><xsl:value-of select="$FCTitle"></xsl:value-of></xsl:element>
             </xsl:when>
             <xsl:otherwise>
                 <xsl:variable name="FCTitle" select="concat('Feature Catalog for the 2019 ', $keywordPass )"/>
                 <xsl:element name="FC_Title"><xsl:value-of select="$FCTitle"></xsl:value-of></xsl:element>
             </xsl:otherwise>
         </xsl:choose>
    </xsl:template>
    
    <xsl:template name="knownURLS">
        <xsl:param name="keywordPass"/>
        <xsl:variable name="TigerURL">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/</xsl:variable>
        <!-- <xsl:comment>keyword:<xsl:value-of select="$keywordPass"/></xsl:comment> -->
        <xsl:choose>
            <xsl:when test="contains($keywordPass,'Counties')">
                <xsl:element name="Feature_Types">county</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/county/tl_2019_county.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'States')">
                <xsl:element name="Feature_Types">States</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/state/tl_2019_state.ea.iso.xml</xsl:element>
            </xsl:when>   
            <xsl:when test="contains($keywordPass,'Micropolitan Statistical Areas')">
                <xsl:element name="Feature_Types">Micropolitan Statistical Areas</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/cbsa/tl_2019_cbsa.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Metropolitan Statistical Areas')">
                <xsl:element name="Feature_Types">Metropolitan Statistical Areas</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/cbsa/tl_2019_cbsa.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Metropolitan Divisions')">
                <xsl:element name="Feature_Types">Metropolitan Divisions</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/metdiv/tl_2019_metdiv.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Combined Statistical Areas')">
                <xsl:element name="Feature_Types">Combined Statistical Areas</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/csa/tl_2019_csa.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Micropolitan New England City and Town Areas')">
                <xsl:element name="Feature_Types">Micropolitan New England City and Town Areas</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/necta/tl_2019_necta.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Metropolitan New England City and Town Areas')">
                <xsl:element name="Feature_Types">Metropolitan New England City and Town Areas</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/necta/tl_2019_necta.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'New England City and Town Area Divisions')">
                <xsl:element name="Feature_Types">New England City and Town Area Divisions</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/nectadiv/tl_2019_nectadiv.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Combined New England City and Town Areas')">
                <xsl:element name="Feature_Types">Combined New England City and Town Areas</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/cnecta/tl_2019_cnecta.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Urban Clusters')">
                <xsl:element name="Feature_Types">Urban Clusters</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/uac10/tl_2019_uac10.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Census Urbanized Areas')">
                <!--  <xsl:comment>UA!!!!!!!!!!!!!!!</xsl:comment>-->
                <xsl:element name="Feature_Types">Census Urbanized Areas</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/uac10/tl_2019_uac10.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Urbanized Areas')">
                <!--  <xsl:comment>UA!!!!!!!!!!!!!!!</xsl:comment>-->
                <xsl:element name="Feature_Types">Census Urbanized Areas</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/uac10/tl_2019_uac10.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'State Legislative Districts - Lower')">
                <xsl:element name="Feature_Types">State Legislative Districts</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/sldl/tl_2019_sldl.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'State Legislative Districts - Upper')">
                <xsl:element name="Feature_Types">State Legislative Districts</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/sldu/tl_2019_sldu.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Congressional Districts')">
                <xsl:element name="Feature_Types">Congressional Districts</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/cd116/tl_2019_cd116.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Alaska Native Regional Corporations')">
                <xsl:element name="Feature_Types">Alaska Native Regional Corporations</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/anrc/tl_2019_anrc.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Census Designated Places')">
                <xsl:element name="Feature_Types">Census Designated Places</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/place/tl_2019_place.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Incorporated Places')">
                <xsl:element name="Feature_Types">Incorporated Place</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/place/tl_2019_place.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Consolidated Cities')">
                <xsl:element name="Feature_Types">Consolidated Cities</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/concity/tl_2019_concity.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Subbarrios')">
                <xsl:element name="Feature_Types">Subbarrios</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/subbarrio/tl_2019_subbarrio.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'County Subdivisions')">
                <xsl:element name="Feature_Types">County Subdivisions</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/cousub/tl_2019_cousub.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Estates')">
                <xsl:element name="Feature_Types">Estates</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/estate/tl_2019_estate.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Elementary School Districts')">
                <xsl:element name="Feature_Types">School Districts</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/elsd/tl_2019_elsd.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Secondary School Districts')">
                <xsl:element name="Feature_Types">School Districts</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/scsd/tl_2019_scsd.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Unified School Districts')">
                <xsl:element name="Feature_Types">School Districts</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/unsd/tl_2019_unsd.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'2010 Census Blocks')">
                <xsl:element name="Feature_Types">Census Blocks</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/tabblock10/tl_2019_tabblock10.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Census Blocks')">
                <xsl:element name="Feature_Types">Census Blocks</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/tabblock10/tl_2019_tabblock10.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Census Block Groups')">
                <xsl:element name="Feature_Types">Block Groups</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/bg/tl_2019_bg.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Census Tracts')">
                <xsl:element name="Feature_Types">Census Tracts</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/tract/tl_2019_tract.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Tribal Block Groups')">
                <xsl:element name="Feature_Types">Tribal Block Groups</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/tbg/tl_2019_tbg.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Tribal Census Tracts')">
                <xsl:element name="Feature_Types">Tribal Census Tracts</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/ttract/tl_2019_ttract.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'ZIP Code Tabulation Areas')">
                <xsl:element name="Feature_Types">ZIP Code Tabulation Areas</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/zcta510/tl_2019_zcta510.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Zip Code Tabulation Areas')">
                <xsl:element name="Feature_Types">ZIP Code Tabulation Areas</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/zcta510/tl_2019_zcta510.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Public Use Microdata Areas')">
                <xsl:element name="Feature_Types">Public Use Microdata Areas</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/puma10/tl_2019_puma10.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Military Installations')">
                <xsl:element name="Feature_Types">Military Installations</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/necta/tl_2019_necta.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Colleges and Universities')">
                <xsl:element name="Feature_Types">Colleges and Universities</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/arealm/tl_2019_arealm.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Correctional Facilities')">
                <xsl:element name="Feature_Types">Correctional Facilities</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/arealm/tl_2019_arealm.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'National Park Service Areas')">
                <xsl:element name="Feature_Types">National Park Service Areas</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/arealm/tl_2019_arealm.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Glaciers')">
                <xsl:element name="Feature_Types">Glaciers</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/areawater/tl_2019_areawater.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Areal Hydrography')">
                <xsl:element name="Feature_Types">Areal Hydrography</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/areawater/tl_2019_areawater.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Linear Hydrography')">
                <xsl:element name="Feature_Types">Linear Hydrography</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/linearwater/tl_2019_linearwater.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Railroads')">
                <xsl:element name="Feature_Types">Railroads</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/rails/tl_2019_rails.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Local Roads')">
                <xsl:element name="Feature_Types">roads</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/roads/tl_2019_roads.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Secondary Roads')">
                <xsl:element name="Feature_Types">roads</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/prisecroads/tl_2019_prisecroads.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Primary Roads')">
                <xsl:element name="Feature_Types">roads</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/prisecroads/tl_2019_prisecroads.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Economic Places')">
                <xsl:element name="Feature_Types">Economic Census Place</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/TIGER2014/placeec/tl_2012_placeec.shp.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Voting Districts')">
                <xsl:element name="Feature_Types">Voting Districts</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/TL2012/ISO/vtd10/2012_vtd10.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Joint-Use Areas')">
                <xsl:element name="Feature_Types">American Indian Joint-Use Areas</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/OtherEAs/tl_2019_AIJUA.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Alaska Native Village Statistical Areas')">
                <xsl:element name="Feature_Types">Alaska Native Village Statistical Areas</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/OtherEAs/tl_2019_EATribalSubdivisions.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Federal American Indian Reservations')">
                <xsl:element name="Feature_Types">Federal American Indian Reservations</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/OtherEAs/tl_2019_FAIR.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Hawaiian Home Lands')">
                <xsl:element name="Feature_Types">Hawaiian Home Lands</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/OtherEAs/tl_2019_HawaiianHomeLands.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'MAF/TIGER Feature Class Codes')">
                <xsl:element name="Feature_Types">MAF/TIGER Feature Class Codes</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/OtherEAs/tl_2019_MAFTIGERFeatureClassCodes.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Off-Reservation Trust Lands')">
                <xsl:element name="Feature_Types">Off-Reservation Trust Lands</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/OtherEAs/tl_2019_Off-ReservationTrustLands.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Oklahoma Tribal Statistical Areas')">
                <xsl:element name="Feature_Types">Oklahoma Tribal Statistical Areas</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/OtherEAs/tl_2019_OklahomaTribalStatisticalAreas.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'SDTSA')">
                <xsl:element name="Feature_Types">State Designated Tribal Statistical Areas</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/OtherEAs/tl_2019_SDTSA.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'State American Indian Reservations')">
                <xsl:element name="Feature_Types">State American Indian Reservations</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/OtherEAs/tl_2019_StateAmericanIndianReservations.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Tribal Designated Statistical Areas')">
                <xsl:element name="Feature_Types">Tribal Designated Statistical Areas</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/OtherEAs/tl_2019_TDSA.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Census Regions')">
                <xsl:element name="Feature_Types">Census Regions</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/OtherEAs/tl_2019_CensusRegions.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Census Divisions')">
                <xsl:element name="Feature_Types">Census Divisions</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/OtherEAs/tl_2019_CensusDivisions.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'State Designated Tribal Statistical Areas')">
                <xsl:element name="Feature_Types">State Designated Tribal Statistical Areas</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/OtherEAs/tl_2019_SDTSA.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Tribal Subdivisions')">
                <xsl:element name="Feature_Types">Tribal Subdivisions</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/OtherEAs/tl_2019_EATribalSubdivisions.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Urban Growth Areas')">
                <xsl:element name="Feature_Types">Urban Growth Areas</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/TL2012/ISO/uga10/2012_uga10.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Traffic Analysis Zones')">
                <xsl:element name="Feature_Types">Traffic Analysis Zones</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/TL2011/taz/2011_taz10.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Traffic Analysis Districts')">
                <xsl:element name="Feature_Types">Traffic Analysis Districts</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/TL2011/tad/tl_2011_us_tad10.ea.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'American Indian, Alaska Native, and Native Hawaiian Areas')">
                <xsl:element name="Feature_Types">American Indian, Alaska Native, and Native Hawaiian Areas</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/OtherEAs/AmericanIndianAlaskaNativeandNativeHawaiianAreas.ea.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'ACS 2019')">
                <xsl:element name="Feature_Types">ACS 2019</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/OtherEAs//ACS2019.ea.gpm.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'ACS 2018')">
                <xsl:element name="Feature_Types">ACS 2018</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/OtherEAs//ACS2018.ea.gpm.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Census 2010')">
                <xsl:element name="Feature_Types">Census 2010</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/OtherEAs/Census2010.ea.gpm.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Regional Offices')">
                <xsl:element name="Feature_Types">Regional Offices</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/CensusRegions.ea.gpm</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'New England City and Town Areas')">
                <xsl:element name="Feature_Types">New England City and Town Area (NECTA)</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/TIGER2018/necta/tl_2018_us_necta.shp.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:when test="contains($keywordPass,'Tribal Statistical Areas')">
                <xsl:element name="Feature_Types">Tribal Designated Statistical Areas</xsl:element>
                <xsl:element name="FC_Online_Linkage">https://meta.geo.census.gov/data/existing/decennial/GEO/GPMB/TIGERline/Tiger2019/OtherEAs/tl_2019_TDSA.ea.iso.xml</xsl:element>
            </xsl:when>
            <xsl:otherwise>
                 <xsl:element name="FC_Online_Linkage"><xsl:value-of select="$TigerURL"/></xsl:element>
            </xsl:otherwise>
        </xsl:choose>
           
    </xsl:template>
    
</xsl:stylesheet>