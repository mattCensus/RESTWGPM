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

<xsl:template name="Mainkeywords">
    <xsl:element name="Keywords">
      <xsl:call-template name="Keywords"/>  
      <xsl:call-template name="StatesPlace"/>
      <xsl:call-template name="USPlace"/>  
    </xsl:element>    
</xsl:template>

<xsl:template name="Keywords">
 
 <xsl:element name="Theme">
     <xsl:element name="Theme_Keyword_Thesaurus">None</xsl:element>
     <xsl:for-each select="/REST_File/layers/name">
         <xsl:element name="Theme_Keyword"><xsl:value-of select="."/></xsl:element>
     </xsl:for-each>
 </xsl:element>
</xsl:template>
    
<xsl:template name="StatesPlace">
    
    <xsl:element name="Place">
        <xsl:element name="Place_Keyword_Thesaurus">National Standard Codes (ANSI INCITS 38-2009), Federal Information Processing Series (FIPS) – States/State Equivalents</xsl:element>
        <xsl:element name="Place_Keyword">Alabama</xsl:element>
        <xsl:element name="Place_Keyword">Alaska</xsl:element>
        <xsl:element name="Place_Keyword">Arizona</xsl:element>
        <xsl:element name="Place_Keyword">Arkansas</xsl:element>
        <xsl:element name="Place_Keyword">California</xsl:element>
        <xsl:element name="Place_Keyword">Colorado</xsl:element>
        <xsl:element name="Place_Keyword">Connecticut</xsl:element>
        <xsl:element name="Place_Keyword">Delaware</xsl:element>
        <xsl:element name="Place_Keyword">District of Columbia</xsl:element>
        <xsl:element name="Place_Keyword">Florida</xsl:element>
        <xsl:element name="Place_Keyword">Georgia</xsl:element>
        <xsl:element name="Place_Keyword">Hawaii</xsl:element>
        <xsl:element name="Place_Keyword">Idaho</xsl:element>
        <xsl:element name="Place_Keyword">Illinois</xsl:element>
        <xsl:element name="Place_Keyword">Indiana</xsl:element>
        <xsl:element name="Place_Keyword">Iowa</xsl:element>
        <xsl:element name="Place_Keyword">Kansas</xsl:element>
        <xsl:element name="Place_Keyword">Kentucky</xsl:element>
        <xsl:element name="Place_Keyword">Louisiana</xsl:element>
        <xsl:element name="Place_Keyword">Maine</xsl:element>
        <xsl:element name="Place_Keyword">Maryland</xsl:element>
        <xsl:element name="Place_Keyword">Massachusetts</xsl:element>
        <xsl:element name="Place_Keyword">Michigan</xsl:element>
        <xsl:element name="Place_Keyword">Minnesota</xsl:element>
        <xsl:element name="Place_Keyword">Mississippi</xsl:element>
        <xsl:element name="Place_Keyword">Missouri</xsl:element>
        <xsl:element name="Place_Keyword">Montana</xsl:element>
        <xsl:element name="Place_Keyword">Nebraska</xsl:element>
        <xsl:element name="Place_Keyword">Nevada</xsl:element>
        <xsl:element name="Place_Keyword">New Hampshire</xsl:element>
        <xsl:element name="Place_Keyword">New Jersey</xsl:element>
        <xsl:element name="Place_Keyword">New Mexico</xsl:element>
        <xsl:element name="Place_Keyword">New York</xsl:element>
        <xsl:element name="Place_Keyword">North Carolina</xsl:element>
        <xsl:element name="Place_Keyword">North Dakota</xsl:element>
        <xsl:element name="Place_Keyword">Ohio</xsl:element>
        <xsl:element name="Place_Keyword">Oklahoma</xsl:element>
        <xsl:element name="Place_Keyword">Oregon</xsl:element>
        <xsl:element name="Place_Keyword">Pennsylvania</xsl:element>
        <xsl:element name="Place_Keyword">Rhode Island</xsl:element>
        <xsl:element name="Place_Keyword">South Carolina</xsl:element>
        <xsl:element name="Place_Keyword">South Dakota</xsl:element>
        <xsl:element name="Place_Keyword">Tennessee</xsl:element>
        <xsl:element name="Place_Keyword">Texas</xsl:element>
        <xsl:element name="Place_Keyword">Utah</xsl:element>
        <xsl:element name="Place_Keyword">Vermont</xsl:element>
        <xsl:element name="Place_Keyword">Virginia</xsl:element>
        <xsl:element name="Place_Keyword">Washington</xsl:element>
        <xsl:element name="Place_Keyword">West Virginia</xsl:element>
        <xsl:element name="Place_Keyword">Wisconsin</xsl:element>
        <xsl:element name="Place_Keyword">Wyoming</xsl:element>
    </xsl:element>
</xsl:template>
    
 <xsl:template name="USPlace">
     <xsl:element name="Place">
         <xsl:element name="Place_Keyword_Thesaurus">ISO 3166: Codes for the representation of names of countries and their subdivisions </xsl:element>
         <xsl:element name="Place_Keyword">U.S</xsl:element>
         <xsl:element name="Place_Keyword">United States</xsl:element>
         <xsl:element name="Place_Keyword">United States of America</xsl:element>
     </xsl:element>
 </xsl:template>
    
</xsl:stylesheet>