  <div class="span2 main-menu-span">
	<div class="well sidebar-nav">
	
<#if (parameters.partyId?has_content) >
  <#assign viewProfileUrl = "viewprofile?partyId=${parameters.partyId?if_exists}"/>
  <#assign CommonPreferencesUrl = "Preferences?partyId=${parameters.partyId}"/>
  <#assign PartyRolesUrl = "viewroles?partyId=${parameters.partyId}"/>
  <#assign PartyPartyIdentificationsUrl = "viewidentifications?partyId=${parameters.partyId}"/>
  <#assign PartyLinkUrl = "linkparty?partyId=${parameters.partyId}"/>
  <#assign PartyRelationshipsUrl = "EditPartyRelationships?partyId=${parameters.partyId}"/>
  <#assign PartyVendorUrl = "viewvendor?partyId=${parameters.partyId}"/>
  <#assign PartyTaxAuthInfosUrl = "EditPartyTaxAuthInfos?partyId=${parameters.partyId}"/>
  <#assign CommonRatesUrl = "EditPartyRates?partyId=${parameters.partyId}"/>
  <#assign PartyShoppingListsUrl = "editShoppingList?partyId=${parameters.partyId}"/>
  <#assign PartySegmentsUrl = "ViewSegmentRoles?partyId=${parameters.partyId}"/>
  <#assign PartyClassificationsUrl = "EditPartyClassifications?partyId=${parameters.partyId}"/>
  <#assign PartyContactListsUrl = "ListPartyContactLists?partyId=${parameters.partyId}"/>
  <#assign PartyContentUrl = "EditPartyContents?partyId=${parameters.partyId}"/>
  <#assign CommonPartySkillsUrl = "EditPartySkills?partyId=${parameters.partyId}"/>
  <#assign HumanResPartyResumeUrl = "EditPartyResumes?partyId=${parameters.partyId}"/>
  <#assign HumanResEmploymentAppUrl = "EditEmploymentApps?partyId=${parameters.partyId}"/>
  <#assign PartyFinancialHistoryUrl = "PartyFinancialHistory?partyId=${parameters.partyId}"/>
  <#assign CommonGeoLocationUrl = "PartyGeoLocation?partyId=${parameters.partyId}"/>
  <#assign ProductProductStoreRolesUrl = "ViewProductStoreRoles?partyId=${parameters.partyId}"/>
  

		<ul class="nav nav-tabs nav-stacked main-menu">
			<li class="nav-header hidden-tablet">&#24555;&#25463;&#26041;&#24335;</li>
			<li><a href="<@ofbizUrl>${viewProfileUrl}</@ofbizUrl>">${uiLabelMap.PartyProfile}</a></li>
			<li><a href="<@ofbizUrl>${CommonPreferencesUrl}</@ofbizUrl>">${uiLabelMap.CommonPreferences}</a></li>		    
		    <li><a href="<@ofbizUrl>${PartyRolesUrl}</@ofbizUrl>">${uiLabelMap.PartyRoles}</a></li>
		    <!--li><a href="<@ofbizUrl>${PartyPartyIdentificationsUrl}</@ofbizUrl>">${uiLabelMap.PartyPartyIdentifications}</a></li-->
		    <li><a href="<@ofbizUrl>${PartyLinkUrl}</@ofbizUrl>">${uiLabelMap.PartyLink}</a></li>
		    <li><a href="<@ofbizUrl>${PartyRelationshipsUrl}</@ofbizUrl>">${uiLabelMap.PartyRelationships}</a></li>
		    <li><a href="<@ofbizUrl>${PartyVendorUrl}</@ofbizUrl>">${uiLabelMap.PartyVendor}</a></li>
		    <li><a href="<@ofbizUrl>${PartyTaxAuthInfosUrl}</@ofbizUrl>">${uiLabelMap.PartyTaxAuthInfos}</a></li>
		    <li><a href="<@ofbizUrl>${CommonRatesUrl}</@ofbizUrl>">${uiLabelMap.CommonRates}</a></li>
		    <li><a href="<@ofbizUrl>${PartyShoppingListsUrl}</@ofbizUrl>">${uiLabelMap.PartyShoppingLists}</a></li>
		    <li><a href="<@ofbizUrl>${PartySegmentsUrl}</@ofbizUrl>">${uiLabelMap.PartySegments}</a></li>
		    <li><a href="<@ofbizUrl>${PartyClassificationsUrl}</@ofbizUrl>">${uiLabelMap.PartyClassifications}</a></li>
		    <li><a href="<@ofbizUrl>${PartyContactListsUrl}</@ofbizUrl>">${uiLabelMap.PartyContactLists}</a></li>
		    <li><a href="<@ofbizUrl>${PartyContentUrl}</@ofbizUrl>">${uiLabelMap.PartyContent}</a></li>
		    <li><a href="<@ofbizUrl>${CommonPartySkillsUrl}</@ofbizUrl>">${uiLabelMap.CommonPartySkills}</a></li>
		    <!--li><a href="<@ofbizUrl>${HumanResPartyResumeUrl}</@ofbizUrl>">${uiLabelMap.HumanResPartyResume}</a></li-->
		    <!--li><a href="<@ofbizUrl>${HumanResEmploymentAppUrl}</@ofbizUrl>">${uiLabelMap.HumanResEmploymentApp}</a></li-->
		    <li><a href="<@ofbizUrl>${PartyFinancialHistoryUrl}</@ofbizUrl>">${uiLabelMap.PartyFinancialHistory}</a></li>
		    <li><a href="<@ofbizUrl>${CommonGeoLocationUrl}</@ofbizUrl>">${uiLabelMap.CommonGeoLocation}</a></li>
		    <li><a href="<@ofbizUrl>${ProductProductStoreRolesUrl}</@ofbizUrl>">${uiLabelMap.ProductProductStoreRoles}</a></li>
		</ul>  

<#else>
	 <#assign findPartyUrl = "findparty"/>
     <#assign createNewPartyGroupUrl = "editpartygroup?create_new=Y"/>
     <#assign createNewPersonUrl = "editperson?create_new=Y"/>
     <#assign createNewCustomerUrl = "NewCustomer"/>
     <#assign createNewProspectUrl = "NewProspect"/>
     <#assign createNewEmpoyeeUrl = "NewEmployee"/>
	<ul class="nav nav-tabs nav-stacked main-menu">
			<li class="nav-header hidden-tablet">&#24555;&#25463;&#26041;&#24335;</li>
			
			<li><a href="<@ofbizUrl>${findPartyUrl}</@ofbizUrl>">${uiLabelMap.PartyFindParties}</a></li>		    
		    <li><a href="<@ofbizUrl>${createNewPartyGroupUrl}</@ofbizUrl>">${uiLabelMap.PartyCreateNewPartyGroup}</a></li>
		    <li><a href="<@ofbizUrl>${createNewPersonUrl}</@ofbizUrl>">${uiLabelMap.PartyCreateNewPerson}</a></li>
		    <li><a href="<@ofbizUrl>${createNewCustomerUrl}</@ofbizUrl>">${uiLabelMap.PartyCreateNewCustomer}</a></li>
		    <li><a href="<@ofbizUrl>${createNewProspectUrl}</@ofbizUrl>">${uiLabelMap.PartyCreateNewProspect}</a></li>
		    <li><a href="<@ofbizUrl>${createNewEmpoyeeUrl}</@ofbizUrl>">${uiLabelMap.PartyCreateNewEmployee}</a></li>      
	</ul>  
</#if> 
	</div><!--/.well -->
  </div><!--/span2-->  