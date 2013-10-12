<#include "header.ftl">
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
This file controls the standard layout of all opentaps applications, including the headers, footers and so on.

There are certain parameters sthat should be set in the context to help this file work:

opentapsApplicationName:  The name of the application in lowercase letters (crmsfa, financials, etc.)
configProperties:  Map containing the config parameters from a file named ${opentapsApplication}.properties
sectionName: What section of the application we are in, which is equivalent to the tab bar name (e.g., accounts, contacts, leads in crmsfa)
-->
${screens.render("component://opentaps-common/widget/screens/common/CommonScreens.xml#applicationTabBar")}
<#-- remove the view history list by Ray
<div id="nav1">
  ${screens.render("component://opentaps-common/widget/screens/common/CommonScreens.xml#navigationHistory")}
</div>  -->

<#include "keyboard-shortcuts.ftl"/>

<div class="centerarea">
  <#include "messages.ftl">

  <div class="contentarea">

    <#if requiredPermission?exists>
      <#if !allowed?exists || (allowed?exists && allowed)>
        <#assign allowed = Static["org.opentaps.common.security.OpentapsSecurity"].checkSectionSecurity(opentapsApplicationName, sectionName, requiredPermission, request)>
      </#if>
    </#if>

    <#if !userLogin?exists>
      <#-- always render normally when no login exists, that way the login page gets rendered first thing. 
      In practice main-body should never happen because OFBIZ will always intercept you and re-direct to login page first -->
      ${screens.render("component://opentaps-common/widget/screens/common/CommonScreens.xml#main-body")}
    <#elseif allowed?exists && !allowed>
      <div class="tableheadtext">${uiLabelMap.OpentapsError_PermissionDenied}</div>
    <#elseif applicationSetupScreen?exists && !session.getAttribute("applicationContextSet")?default(false)>
      ${screens.render(applicationSetupScreen)}
    <#else>
      ${screens.render("component://opentaps-common/widget/screens/common/CommonScreens.xml#main-body")}
    </#if>
	
  </div>
</div>



</body>
</html>
<!-- external javascript
	================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->

	<!-- jQuery -->
	<script src="/eeda/js/jquery-1.7.2.min.js"></script>
	<!-- jQuery UI -->
	<script src="/eeda/js/jquery-ui-1.8.21.custom.min.js"></script>
	<!-- transition / effect library -->
	<script src="/eeda/js/bootstrap-transition.js"></script>
	<!-- alert enhancer library -->
	<script src="/eeda/js/bootstrap-alert.js"></script>
	<!-- modal / dialog library -->
	<script src="/eeda/js/bootstrap-modal.js"></script>
	<!-- custom dropdown library -->
	<script src="/eeda/js/bootstrap-dropdown.js"></script>
	<!-- scrolspy library -->
	<script src="/eeda/js/bootstrap-scrollspy.js"></script>
	<!-- library for creating tabs -->
	<script src="/eeda/js/bootstrap-tab.js"></script>
	<!-- library for advanced tooltip -->
	<script src="/eeda/js/bootstrap-tooltip.js"></script>
	<!-- popover effect library -->
	<script src="/eeda/js/bootstrap-popover.js"></script>
	<!-- button enhancer library -->
	<script src="/eeda/js/bootstrap-button.js"></script>
	<!-- accordion library (optional, not used in demo) -->
	<script src="/eeda/js/bootstrap-collapse.js"></script>
	<!-- carousel slideshow library (optional, not used in demo) -->
	<script src="/eeda/js/bootstrap-carousel.js"></script>
	<!-- autocomplete library -->
	<script src="/eeda/js/bootstrap-typeahead.js"></script>
	<!-- tour library -->
	<script src="/eeda/js/bootstrap-tour.js"></script>
	<!-- library for cookie management -->
	<script src="/eeda/js/jquery.cookie.js"></script>
	<!-- calander plugin -->
	<script src='/eeda/js/fullcalendar.min.js'></script>
	<!-- data table plugin -->
	<script src='/eeda/js/jquery.dataTables.min.js'></script>
