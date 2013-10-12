  <div class="span2 main-menu-span">
	<div class="well sidebar-nav">
	
	<ul class="nav nav-tabs nav-stacked main-menu">
		<li class="nav-header hidden-tablet">&#24555;&#25463;&#26041;&#24335;</li>
		
		<#if !configItemId??>
			<li><a href="<@ofbizUrl>EditProductConfigItem</@ofbizUrl>">${uiLabelMap.CommonCreateNew}</a></li>
		<#else>
		
		<#assign EditProductConfigItem="EditProductConfigItem?configItemId=${configItemId}" />
		<li><a href="<@ofbizUrl>${EditProductConfigItem}</@ofbizUrl>">${uiLabelMap.ProductConfigItem}</a></li>

        <#assign EditProductConfigOptions="EditProductConfigOptions?configItemId=${configItemId}" />
        <li><a href="<@ofbizUrl>${EditProductConfigOptions}</@ofbizUrl>">${uiLabelMap.ProductConfigOptions}</a></li>

        <#assign EditProductConfigItemContent="EditProductConfigItemContent?configItemId=${configItemId}" />
        <li><a href="<@ofbizUrl>${EditProductConfigItemContent}</@ofbizUrl>">${uiLabelMap.ProductContent}</a></li>

        <#assign ProductConfigItemArticle="ProductConfigItemArticle?configItemId=${configItemId}" />
        <li><a href="<@ofbizUrl>${ProductConfigItemArticle}</@ofbizUrl>">${uiLabelMap.ProductProduct}</a></li>

		</#if>
	</ul>  
	
	</div><!--/.well -->
  </div><!--/span2-->  