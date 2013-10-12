  <div class="span2 main-menu-span">
	<div class="well sidebar-nav">
	
	<ul class="nav nav-tabs nav-stacked main-menu">
		<li class="nav-header hidden-tablet">&#24555;&#25463;&#26041;&#24335;</li>
		<#--condition><if-has-permission permission="HUMANRES" action="_VIEW"/></condition-->
		
		<#if security.hasEntityPermission("HUMANRES", "_VIEW", session)>
		<#assign JobRequisition="FindJobRequisitions"/>
		<li><a href="<@ofbizUrl>${JobRequisition}</@ofbizUrl>">${uiLabelMap.HumanResJobRequisition}</a></li>
 
        <#assign InternalJobPosting="FindInternalJobPosting" />
        <li><a href="<@ofbizUrl>${InternalJobPosting}</@ofbizUrl>">${uiLabelMap.HumanResInternalJobPosting}</a></li>
        </#if>
	</ul>  
	
	</div><!--/.well -->
  </div><!--/span2-->  