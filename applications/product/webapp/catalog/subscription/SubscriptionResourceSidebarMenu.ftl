  <div class="span2 main-menu-span">
	<div class="well sidebar-nav">
	
	<ul class="nav nav-tabs nav-stacked main-menu">
		<li class="nav-header hidden-tablet">&#24555;&#25463;&#26041;&#24335;</li>
		
		<#if !subscriptionResourceId??>
			<li><a href="<@ofbizUrl>EditSubscription</@ofbizUrl>">${uiLabelMap.ProductNewSubscription}</a></li>
			<li><a href="<@ofbizUrl>FindSubscriptionResource</@ofbizUrl>">${uiLabelMap.PageTitleFindSubscriptionResource}</a></li>
		<#else>

        <#assign EditSubscriptionResource="EditSubscriptionResource?subscriptionResourceId=${subscriptionResourceId}" />
        <li><a href="<@ofbizUrl>${EditSubscriptionResource}</@ofbizUrl>">${uiLabelMap.ProductSubscriptionResource}</a></li>

        <#assign EditSubscriptionResourceProducts="EditSubscriptionResourceProducts?subscriptionResourceId=${subscriptionResourceId}" />
        <li><a href="<@ofbizUrl>${EditSubscriptionResourceProducts}</@ofbizUrl>">${uiLabelMap.ProductProducts}</a></li>
        
		</#if>
	</ul>  
	
	</div><!--/.well -->
  </div><!--/span2-->  