  <div class="span2 main-menu-span">
	<div class="well sidebar-nav">
	
	<ul class="nav nav-tabs nav-stacked main-menu">
		<li class="nav-header hidden-tablet">&#24555;&#25463;&#26041;&#24335;</li>
		<#if sectionName=="Employment">
        	<li><a href="<@ofbizUrl>EditEmployment</@ofbizUrl>">${uiLabelMap.HumanResNewEmployment}</a></li>
        </#if>
        <#if sectionName=="EmploymentApp">
        	<li><a href="<@ofbizUrl>NewEmploymentApp</@ofbizUrl>">${uiLabelMap.HumanResNewEmploymentApp}</a></li>
        </#if>
	</ul>  
	
	</div><!--/.well -->
  </div><!--/span2-->  