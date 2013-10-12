  <div class="span2 main-menu-span">
	<div class="well sidebar-nav">
	
	<ul class="nav nav-tabs nav-stacked main-menu">
		<li class="nav-header hidden-tablet">&#24555;&#25463;&#26041;&#24335;</li>
		
		<#if !productPromoId??>
			<li><a href="<@ofbizUrl>EditProductPromo</@ofbizUrl>">${uiLabelMap.ProductNewProductPromo}</a></li>
		<#else>
		
        <#assign EditProductPromo="EditProductPromo?productPromoId=${parameters.productPromoId}" />
        <li><a href="<@ofbizUrl>${EditProductPromo}</@ofbizUrl>">${uiLabelMap.ProductPromotion}</a></li>
           
        <#assign EditProductPromoRules="EditProductPromoRules?productPromoId=${parameters.productPromoId}" />
        <li><a href="<@ofbizUrl>${EditProductPromoRules}</@ofbizUrl>">${uiLabelMap.ProductRules}</a></li>

        <#assign EditProductPromoStores="EditProductPromoStores?productPromoId=${parameters.productPromoId}" />
        <li><a href="<@ofbizUrl>${EditProductPromoStores}</@ofbizUrl>">${uiLabelMap.ProductStores}</a></li>

        <#assign FindProductPromoCode="FindProductPromoCode?productPromoId=${parameters.productPromoId}" />
        <li><a href="<@ofbizUrl>${FindProductPromoCode}</@ofbizUrl>">${uiLabelMap.ProductPromotionCode}</a></li>

        <#assign EditProductPromoContent="EditProductPromoContent?productPromoId=${parameters.productPromoId}" />
        <li><a href="<@ofbizUrl>${EditProductPromoContent}</@ofbizUrl>">${uiLabelMap.CommonContent}</a></li>

		</#if>
	</ul>  
	
	</div><!--/.well -->
  </div><!--/span2-->  