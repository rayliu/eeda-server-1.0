  <div class="span2 main-menu-span">
	<div class="well sidebar-nav">
	
	<ul class="nav nav-tabs nav-stacked main-menu">
		<li class="nav-header hidden-tablet">&#24555;&#25463;&#26041;&#24335;</li>
		
		<#--condition>
            <if-has-permission permission="CATALOG" action="_VIEW"/>
        </condition -->
		
		
		<#assign ListShipmentMethodTypes="ListShipmentMethodTypes" />
		<li><a href="<@ofbizUrl>${ListShipmentMethodTypes}</@ofbizUrl>">${uiLabelMap.ProductShipmentMethodTypes}</a></li>

        <#assign ListQuantityBreaks="ListQuantityBreaks"/>
        <li><a href="<@ofbizUrl>${ListQuantityBreaks}</@ofbizUrl>">${uiLabelMap.ProductQuantityBreaks}</a></li>

        <#assign ListCarrierShipmentMethods="ListCarrierShipmentMethods" />
        <li><a href="<@ofbizUrl>${ListCarrierShipmentMethods}</@ofbizUrl>">${uiLabelMap.ProductShipping}</a></li>

	</ul>  
	
	</div><!--/.well -->
  </div><!--/span2-->  