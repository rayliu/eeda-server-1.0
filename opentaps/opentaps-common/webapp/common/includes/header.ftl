<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<#--
 * Copyright (c) Open Source Strategies, Inc.
 * 
 * Opentaps is free software: you can redistribute it and/or modify it
 * under the terms of the GNU Affero General Public License as published
 * by the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Opentaps is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with Opentaps.  If not, see <http://www.gnu.org/licenses/>.
-->
<#--
 *  Copyright (c) 2001-2005 The Open For Business Project - www.ofbiz.org
 *
 *  Permission is hereby granted, free of charge, to any person obtaining a 
 *  copy of this software and associated documentation files (the "Software"), 
 *  to deal in the Software without restriction, including without limitation 
 *  the rights to use, copy, modify, merge, publish, distribute, sublicense, 
 *  and/or sell copies of the Software, and to permit persons to whom the 
 *  Software is furnished to do so, subject to the following conditions:
 *
 *  The above copyright notice and this permission notice shall be included 
 *  in all copies or substantial portions of the Software.
 *
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS 
 *  OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF 
 *  MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
 *  IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY 
 *  CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT 
 *  OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR 
 *  THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 *  @author Leon Torres (leon@opensourcestrategies.com) 
-->
<@import location="component://opentaps-common/webapp/common/includes/lib/opentapsFormMacros.ftl"/>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Script-Type" content="text/javascript"/>
    <meta http-equiv="Content-Style-Type" content="text/css"/>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

	<meta name="description" content="Eeda, ERP, a fully featured, responsive, system.">
	<meta name="author" content="Eeda123.com, Ray Liu">

	<!-- The styles -->
	<link id="bs-css" href="/eeda/css/bootstrap-cerulean.css" rel="stylesheet">
	<style type="text/css">
	  body {
		padding-bottom: 40px;
	  }
	  .sidebar-nav {
		padding: 9px 0;
	  }
	</style>
	<link href="/opentaps_js/jscalendar-1.0/skins/aqua/theme.css" rel="stylesheet">
	<link href="/eeda/css/eeda-gwt.css" rel="stylesheet">
	<link href="/eeda/css/bootstrap-responsive.css" rel="stylesheet">
	<link href="/eeda/css/charisma-app.css" rel="stylesheet">
	<link href="/eeda/css/jquery-ui-1.8.21.custom.css" rel="stylesheet">
	<link href='/eeda/css/fullcalendar.css' rel='stylesheet'>
	<link href='/eeda/css/fullcalendar.print.css' rel='stylesheet'  media='print'>
	<link href='/eeda/css/chosen.css' rel='stylesheet'>
	<link href='/eeda/css/uniform.default.css' rel='stylesheet'>
	<link href='/eeda/css/colorbox.css' rel='stylesheet'>
	<link href='/eeda/css/jquery.cleditor.css' rel='stylesheet'>
	<link href='/eeda/css/jquery.noty.css' rel='stylesheet'>
	<link href='/eeda/css/noty_theme_default.css' rel='stylesheet'>
	<link href='/eeda/css/elfinder.min.css' rel='stylesheet'>
	<link href='/eeda/css/elfinder.theme.css' rel='stylesheet'>
	<link href='/eeda/css/jquery.iphone.toggle.css' rel='stylesheet'>
	<link href='/eeda/css/opa-icons.css' rel='stylesheet'>
	<link href='/eeda/css/uploadify.css' rel='stylesheet'>

	<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<!-- The fav icon -->
	
    <link rel="shortcut icon" href="<@ofbizContentUrl>/opentaps_images/favicon.ico</@ofbizContentUrl>">
    <title><#if pageTitleLabel?exists>${uiLabelMap.get(pageTitleLabel)} |</#if> ${configProperties.get(opentapsApplicationName+".title")}</title>
	
    <#assign appName = Static["org.ofbiz.base.util.UtilHttp"].getApplicationName(request)/>

  <#if opentapsWebapp?has_content && opentapsWebapp.alternativeCssFile?has_content>
      <link rel="stylesheet" href="${StringUtil.wrapString(opentapsWebapp.alternativeCssFile)}" type="text/css"/>
  <#else>
    <#list Static["org.opentaps.common.util.UtilConfig"].getStylesheetFiles(opentapsApplicationName) as stylesheet>
      <!--link rel="stylesheet" href="<@ofbizContentUrl>${StringUtil.wrapString(stylesheet)}</@ofbizContentUrl>" type="text/css"/-->
    </#list>

    <#-- here is where the dynamic CSS goes, for changing theme color, etc. To activate this, define sectionName = 'section' -->
    <#if sectionName?exists>
      <#assign bgcolor = StringUtil.wrapString(Static["org.opentaps.common.util.UtilConfig"].getSectionBgColor(opentapsApplicationName, sectionName))/>
      <#assign fgcolor = StringUtil.wrapString(Static["org.opentaps.common.util.UtilConfig"].getSectionFgColor(opentapsApplicationName, sectionName))/>
      <style type="text/css">
//h1, h2, .gwt-screenlet-header, .sectionHeader, .subSectionHeader, .subSectionTitle, .formSectionHeader, .formSectionHeaderTitle, .screenlet-header, .boxhead, .boxtop, div.boxtop, .toggleButtonDisabled, .tundra .dijitDialogTitleBar, .shortcutGroup td, .screenlet-title-bar {color: ${fgcolor}; background-color: ${bgcolor}; background-image:url(/opentaps_images/panels/top-bottom-${bgcolor?replace("#", "")}.gif); }
.screenlet-header .boxhead, .subSectionHeader .subSectionTitle, .boxtop .boxhead { background:transparent;}
div.sectionTabBorder, ul.sectionTabBar li.sectionTabButtonSelected a {color: ${fgcolor};}
div.sectionTabBorder {background: ${bgcolor} !important;}
//.x-panel-tl, .x-panel-tr, .titleBar .x-panel-br, .titleBar .x-panel-bl { background-image:url(/opentaps_images/panels/corners-sprite-${bgcolor?replace("#", "")}.gif) !important; }
//div.sectionTabBorder, .x-panel-tc, .titleBar .x-panel-bc { background-image:url(/opentaps_images/panels/top-bottom-${bgcolor?replace("#", "")}.gif) !important; }
//.x-panel-tl .x-panel-header, .frameSectionHeader .pageNumber {color: ${fgcolor} !important; }
.x-panel-noborder .x-panel-header-noborder { border:none !important; }
ul.sectionTabBar li.sectionTabButtonUnselected .x-panel-tl,
ul.sectionTabBar li.sectionTabButtonUnselected .x-panel-tr { background-image:url(/opentaps_images/panels/corners-sprite-bw.gif) !important; }
ul.sectionTabBar li.sectionTabButtonUnselected .x-panel-tc { background-image:url(/opentaps_images/panels/top-bottom-bw.gif) !important; }


      </style>

      
    </#if>
  </#if>
      <script src="/${appName}/control/javascriptUiLabels.js" type="text/javascript"></script>

      <#assign javascripts = Static["org.opentaps.common.util.UtilConfig"].getJavascriptFiles(opentapsApplicationName, locale)/>

      <#if layoutSettings?exists && layoutSettings.javaScripts?has_content>
        <#assign javascripts = javascripts + layoutSettings.javaScripts/>
      </#if>

      <#list javascripts as javascript>
        <#if javascript?matches(".*dojo.*")>
          <#-- Unfortunately, due to Dojo's module-loading behaviour, it must be served locally -->
          <script src="${StringUtil.wrapString(javascript)}" type="text/javascript" djConfig="isDebug: false, parseOnLoad: true <#if Static["org.ofbiz.base.util.UtilHttp"].getLocale(request)?exists>, locale: '${Static["org.ofbiz.base.util.UtilHttp"].getLocale(request).getLanguage()}'</#if>"></script>
        <#else>
          <script src="<@ofbizContentUrl>${StringUtil.wrapString(javascript)}</@ofbizContentUrl>" type="text/javascript"></script>
        </#if>
      </#list>

    <script type="text/javascript">
        // This code set the timeout default value for opentaps.sendRequest
        var ajaxDefaultTimeOut = ${configProperties.get("opentaps.ajax.defaultTimeout")};
    </script>        
    <#if gwtScripts?exists>
      <meta name="gwt:property" content="locale=${locale}"/>
    </#if>
</head>


<body>
	
  <#--${configProperties.get(opentapsApplicationName+".title")} -->
  <#assign callInEventIcon = Static["org.ofbiz.base.util.UtilProperties"].getPropertyValue("voip.properties", "voip.icon.callInEvent")>
  <#if gwtScripts?exists>
    <#list gwtScripts as gwtScript>
      <#if !gwtBlockScripts?has_content || !gwtBlockScripts.contains(gwtScript)>
        <@gwtModule widget=gwtScript />
      </#if>
    </#list>
    <#-- Bridge between server data and GWT widgets -->
    <script type="text/javascript" language="javascript">
      <#-- expose base permissions to GWT -->
      <#if user?has_content>
        var securityUser = new Object();
        <#list user.permissions as permission>
          securityUser["${permission}"] = true;
        </#list>
      </#if>
      <#-- set up the OpentapsConfig dictionary (see OpentapsConfig.java) -->
      var OpentapsConfig = {
      <#if configProperties.defaultCountryCode?has_content>
        defaultCountryCode: "${configProperties.defaultCountryCode}",
      </#if>
      <#if configProperties.defaultCountryGeoId?has_content>
        defaultCountryGeoId: "${configProperties.defaultCountryGeoId}",
      </#if>
      <#if configProperties.defaultCurrencyUomId?has_content>
        defaultCurrencyUomId: "${configProperties.defaultCurrencyUomId}",
      </#if>
      <#if callInEventIcon?has_content>
        callInEventIcon: "${callInEventIcon}",
      </#if>
      <#if infrastructure?has_content>
        showTopNavMenu: "${(infrastructure.getConfigurationValue("UI_TOP_NAV_MENU_SHOW"))!"Y"}",
      </#if>
        applicationName: "${opentapsApplicationName}"
      };
    </script>
  </#if>
  <!-- display webapps menu -->
  <!-- got the url of link to ofbiz application -->

  <#assign ofbizTabTarget= Static["org.opentaps.common.util.UtilConfig"].getPropertyValue(appName, appName + ".tab.ofbiz.target")/>
  <#if ofbizTabTarget?exists>  
    <#assign ofbizAppUrl=response.encodeURL(ofbizTabTarget)/>
  </#if>
  
  <#-- not use the gwt way to build top bar,  Ray 2013-6-30 -->
  <!--div style="float: left; vertical-align:top; margin-top: 0px;">
    <div style="height:20px">
      <@gwtWidget id="webAppsMenu"/>
    </div>
    <!--
    <#if (infrastructure.getConfigurationValueAsBoolean("UI_LOGO_SHOW"))!true>
      <div style="margin-left: 10px; margin-top: 5px; margin-bottom: 10px;">
        <#if ofbizAppUrl?exists><a href="${ofbizAppUrl}"></#if><img alt="${configProperties.get(opentapsApplicationName+".title")}" src="<@ofbizContentUrl>${infrastructure.getConfigurationValue("UI_LOGO_IMG")!}</@ofbizContentUrl>" border="0"/><#if ofbizAppUrl?exists></a></#if>
      </div>
    </#if>
    -->
  </div-->

 <#-- if user is authenticated -->
    <#if userLogin?exists>
	    <!-- topbar starts  navbar-fixed-top -->
		<div class="navbar ">
			<div class="navbar-inner">
				<div class="container-fluid">
					<a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</a>
					<a class="brand" href="/"> <img alt="Eeda Logo" src="<@ofbizContentUrl>${configProperties.get("opentaps.logo")}</@ofbizContentUrl>" /></a>
					
					<!-- user dropdown starts -->
					<div class="btn-group pull-right" >
						<#if requestAttributes.userLogin?has_content>
					        <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="icon-user"></i><span class="hidden-phone">${userLogin.userLoginId}</span>
								<span class="caret"></span>
							</a>
					    </#if>
						
						<ul class="dropdown-menu">
							<#if requestAttributes.userLogin?has_content>
						        <#if enableInternalMessaging?default(false)>${screens.render("component://opentaps-common/widget/screens/common/CommonScreens.xml#newMessageSummary")}</#if>
						        <li><a href="<@ofbizUrl>myProfile</@ofbizUrl>" class="linktext">${uiLabelMap.PartyProfile}</a></li>
						        <li class="divider"></li>
						    </#if>
							<#if requestAttributes.userLogin?has_content>
						        <li><a href="<@ofbizUrl>logout</@ofbizUrl>" class="linktext">${uiLabelMap.CommonLogout}</a></li>
						    </#if>
						</ul>
					</div>
					<!-- user dropdown ends -->
					
					<div class="top-nav nav-collapse">
						<ul class="nav">
							<#if apps?exists>	                
							      <#list apps as app>
							        <#if (!app.hide?exists || app.hide != "Y") && app.linkUrl?has_content>				          
							              <li class="">
							                <a href="${app.linkUrl}<#if externalKeyParam?exists>?${externalKeyParam}</#if>" >
								                ${uiLabelMap[app.shortName]}
								            </a>
							              </li>
				                    </#if>
						          </#list>
						      </#if>
						</ul>
					</div><!--/.nav-collapse -->
				</div>
			</div>
		</div>
		<!-- topbar ends -->
	</#if>


  <div align="right" style="margin-left: 300px; margin-right: 10px; margin-top: 10px;">

    
    <#-- change facility or organization -->
    <#if applicationSetupFacility?has_content>
      <div class="insideHeaderSubtext">
        <b>${uiLabelMap.OpentapsWarehouse}</b>:&nbsp;${applicationSetupFacility.facilityName}&nbsp; (<@displayLink text="${uiLabelMap.CommonChange}" href="selectFacilityForm"/>)
      </div>
    </#if>
    <#if applicationSetupOrganization?has_content>
      <div class="insideHeaderSubtext">
        <b>${uiLabelMap.ProductOrganization}</b>:&nbsp;${applicationSetupOrganization.groupName}&nbsp; (<@displayLink text="${uiLabelMap.CommonChange}" href="selectOrganizationForm"/>)
      </div>
    </#if>
  
      <#-- live help link and search link.  -->
      <#if (infrastructure.getConfigurationValueAsBoolean("UI_HELP_LINK_SHOW"))!true>
        <#assign helpUrl = Static["org.opentaps.common.util.UtilCommon"].getUrlContextHelpResource(delegator, appName, parameters._CURRENT_VIEW_, screenState?default(""))!/>
      </#if>
      <div class="liveHelp" style='display:none;'>
        <#if helpUrl?exists && helpUrl?has_content>
           <#-- search button needs a little space to the right for help button -->
           <div style="padding:5px;position:absolute;right:60px" class="applicationSearch" id="gwtSearch"></div>
           <a class="liveHelp" href="${helpUrl}" target="_blank" title="${uiLabelMap.OpentapsLiveHelp}"><img src="/opentaps_images/buttons/help_ofbiz_svn.gif" width="20" height="20" alt="${uiLabelMap.OpentapsLiveHelp}"/></a>
         <#else>  
           <#-- just search button, with room to the right for the contact button  -->
           <div style="padding:5px;position:absolute;right:30px" class="applicationSearch" id="gwtSearch"></div>
        </#if>
        <#if (infrastructure.getConfigurationValueAsBoolean("UI_SUPPORT_LINK_SHOW"))!true>
          <a href="http://www.opentaps.org/contact" target="_blank" title="${uiLabelMap.OpentapsGetHelpFromAnOpentapsPartner}"><img src="<@ofbizContentUrl>/opentaps_images/openclipart.org/dholler_ok_16x16.png</@ofbizContentUrl>" alt="${uiLabelMap.OpentapsGetHelpFromAnOpentapsPartner}" width="16" height="16"/></a>
        </#if>
      </div>   
      
    <#-- voip notification -->
    <div class="gwtVoipNotification" id="gwtVoipNotification"></div>

  </div>
  <div class="spacer"></div>

