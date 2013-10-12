  <div class="span2 main-menu-span">
	<div class="well sidebar-nav">
	
	<ul class="nav nav-tabs nav-stacked main-menu">
		<li class="nav-header hidden-tablet">&#24555;&#25463;&#26041;&#24335;</li>
		
		<#if !productStoreId??>
			<li><a href="<@ofbizUrl>EditProductStore</@ofbizUrl>">${uiLabelMap.ProductCreateNewProductStore}</a></li>
		<#else>
		
		<#assign EditProductStore="EditProductStore?productStoreId=${productStoreId}" />
		<li><a href="<@ofbizUrl>${EditProductStore}</@ofbizUrl>">${uiLabelMap.ProductStore}</a></li>

        <#assign FindProductStoreRoles="FindProductStoreRoles?productStoreId=${productStoreId}" />
        <li><a href="<@ofbizUrl>${FindProductStoreRoles}</@ofbizUrl>">${uiLabelMap.PartyRoles}</a></li>

        <#assign EditProductStorePromos="EditProductStorePromos?productStoreId=${productStoreId}" />
        <li><a href="<@ofbizUrl>${EditProductStorePromos}</@ofbizUrl>">${uiLabelMap.ProductPromos}</a></li>

        <#assign EditProductStoreCatalogs="EditProductStoreCatalogs?productStoreId=${productStoreId}" />
        <li><a href="<@ofbizUrl>${EditProductStoreCatalogs}</@ofbizUrl>">${uiLabelMap.ProductCatalogs}</a></li>

        <#assign EditProductStoreWebSites="EditProductStoreWebSites?viewProductStoreId=${productStoreId}" />
        <li><a href="<@ofbizUrl>${EditProductStoreWebSites}</@ofbizUrl>">${uiLabelMap.ProductWebSites}</a></li>

        <!-- The tax stuff is in the Tax Authority area of the accounting manager, need to re-do this screen to list current tax entries and link to the accmgr screens
        <#assign name="EditProductStoreTaxSetup" title="${uiLabelMap.ProductSalesTax}">
        <li><a href="<@ofbizUrl>${EditProductStore}</@ofbizUrl>">${uiLabelMap.ProductStore}</a></li>
            <link target="EditProductStoreTaxSetup">
                <parameter param-name="productStoreId"/>
            </link>
        </menu-item>
        -->
        <#assign EditProductStoreShipSetup="EditProductStoreShipSetup?productStoreId=${productStoreId}" />
        <li><a href="<@ofbizUrl>${EditProductStoreShipSetup}</@ofbizUrl>">${uiLabelMap.ProductShipping}</a></li>

        <#assign EditProductStoreShipmentCostEstimates="EditProductStoreShipmentCostEstimates?productStoreId=${productStoreId}" />
        <li><a href="<@ofbizUrl>${EditProductStoreShipmentCostEstimates}</@ofbizUrl>">${uiLabelMap.ProductViewEstimates}</a></li>

        <#assign EditProductStorePaySetup="EditProductStorePaySetup?productStoreId=${productStoreId}" />
        <li><a href="<@ofbizUrl>${EditProductStorePaySetup}</@ofbizUrl>">${uiLabelMap.CommonPayments}</a></li>

        <#assign EditProductStoreFinAccountSettings="EditProductStoreFinAccountSettings?productStoreId=${productStoreId}" />
        <li><a href="<@ofbizUrl>${EditProductStoreFinAccountSettings}</@ofbizUrl>">${uiLabelMap.CommonFinAccounts}</a></li>

        <#assign EditProductStoreEmails="EditProductStoreEmails?productStoreId=${productStoreId}" />
        <li><a href="<@ofbizUrl>${EditProductStoreEmails}</@ofbizUrl>">${uiLabelMap.CommonEmails}</a></li>

        <#assign EditProductStoreSurveys="EditProductStoreSurveys?productStoreId=${productStoreId}" />
        <li><a href="<@ofbizUrl>${EditProductStoreSurveys}</@ofbizUrl>">${uiLabelMap.CommonSurveys}</a></li>

        <#assign EditProductStoreKeywordOvrd="editProductStoreKeywordOvrd?productStoreId=${productStoreId}" />
        <li><a href="<@ofbizUrl>${EditProductStoreKeywordOvrd}</@ofbizUrl>">${uiLabelMap.ProductOverride}</a></li>

        <#assign ViewProductStoreSegments="ViewProductStoreSegments?productStoreId=${productStoreId}" />
        <li><a href="<@ofbizUrl>${ViewProductStoreSegments}</@ofbizUrl>">${uiLabelMap.ProductSegments}</a></li>

        <#assign EditProductStoreVendorPayments="EditProductStoreVendorPayments?productStoreId=${productStoreId}" />
        <li><a href="<@ofbizUrl>${EditProductStoreVendorPayments}</@ofbizUrl>">${uiLabelMap.ProductVendorPayments}</a></li>

        <#assign EditProductStoreVendorShipments="EditProductStoreVendorShipments?productStoreId=${productStoreId}" />
        <li><a href="<@ofbizUrl>${EditProductStoreVendorShipments}</@ofbizUrl>">${uiLabelMap.ProductVendorShipments}</a></li>

		</#if>
	</ul>  
	
	</div><!--/.well -->
  </div><!--/span2-->  