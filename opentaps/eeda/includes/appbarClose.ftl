<#--
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.
-->
<#--assign appModelMenu = Static["org.ofbiz.widget.menu.MenuFactory"].getMenuFromLocation(applicationMenuLocation,applicationMenuName,delegator,dispatcher)-->
<#if person?has_content>
  <#assign userName = person.firstName?if_exists + " " + person.middleName?if_exists + " " + person.lastName?if_exists>
<#elseif partyGroup?has_content>
  <#assign userName = partyGroup.groupName?if_exists>
<#elseif userLogin?exists>
  <#assign userName = userLogin.userLoginId>
<#else>
  <#assign userName = "">
</#if>
<#if defaultOrganizationPartyGroupName?has_content>
  <#assign orgName = " - " + defaultOrganizationPartyGroupName?if_exists>
<#else>
  <#assign orgName = "">
</#if>

<#--if appModelMenu.getModelMenuItemByName(headerItem)?exists>
  <#if headerItem!="main">
    <div class="breadcrumbs-sep">
      ${appModelMenu.getModelMenuItemByName(headerItem).getTitle(context)}
    </div>
  </#if>
</#if-->

<#-- && !appModelMenu.getModelMenuItemByName(headerItem)?exists 
    don't need this condition  Ray   liuyubie@gmail.com 2013-7-27 -->
<#if parameters.portalPageId?has_content && userLogin?exists>
    <#assign findMap = Static["org.ofbiz.base.util.UtilMisc"].toMap("portalPageId", parameters.portalPageId)>
    <#assign portalPage = delegator.findByPrimaryKeyCache("PortalPage", findMap)>
    <#if portalPage?has_content>
      <!--div class="breadcrumbs-sep">
        ${portalPage.portalPageName?if_exists}
      </div-->
    </#if>
</#if>

</div>
</div>
<div class="clear">
</div>

<#if userLogin?exists>
<script type="text/javascript">
 document.observe('dom:loaded', function() {
  //var mainmenu = new DropDownMenu($('main-navigation'));
  //var appmenu = new DropDownMenu($('app-navigation'));
 });
</script>
</#if>

${screens.render("component://opentaps-common/widget/screens/common/CommonScreens.xml#applicationTabBar")}