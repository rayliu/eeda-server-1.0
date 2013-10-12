  <div class="span2 main-menu-span">
	<div class="well sidebar-nav">
	
        
	<ul class="nav nav-tabs nav-stacked main-menu">
			<li class="nav-header hidden-tablet">&#24555;&#25463;&#26041;&#24335;</li>
			<#assign FeatureType="EditFeatureTypes"/>
			<li><a href="<@ofbizUrl>${FeatureType}</@ofbizUrl>">${uiLabelMap.ProductFeatureType}</a></li>
           
	        <#assign FeatureCategory="EditFeatureCategories" />
	        <li><a href="<@ofbizUrl>${FeatureCategory}</@ofbizUrl>">${uiLabelMap.ProductFeatureCategory}</a></li>
	        
	        <#assign FeatureGroup="EditFeatureGroups" />
	        <li><a href="<@ofbizUrl>${FeatureGroup}</@ofbizUrl>">${uiLabelMap.ProductFeatureGroup}</a></li>

	        <#assign FeatureInterAction="EditFeatureInterActions" />
	        <li><a href="<@ofbizUrl>${FeatureInterAction}</@ofbizUrl>">${uiLabelMap.ProductFeatureInteraction}</a></li>
	        
	</ul>  

	</div><!--/.well -->
  </div><!--/span2-->  