  <div class="span2 main-menu-span">
	<div class="well sidebar-nav">
	
	<ul class="nav nav-tabs nav-stacked main-menu">
		<li class="nav-header hidden-tablet">&#24555;&#25463;&#26041;&#24335;</li>
		
		<#--condition>
            <if-has-permission permission="CATALOG" action="_VIEW"/>
        </condition-->
		<#assign WebAnalyticsConfigs="WebAnalyticsConfigs" />
		<li><a href="<@ofbizUrl>${WebAnalyticsConfigs}</@ofbizUrl>">${uiLabelMap.CatalogWebAnalyticsConfigs}</a></li>

        <#assign WebAnalyticsTypes="WebAnalyticsTypes" />
        <li><a href="<@ofbizUrl>${WebAnalyticsTypes}</@ofbizUrl>">${uiLabelMap.CatalogWebAnalyticsTypes}</a></li>

	</ul>  
	
	</div><!--/.well -->
  </div><!--/span2-->  