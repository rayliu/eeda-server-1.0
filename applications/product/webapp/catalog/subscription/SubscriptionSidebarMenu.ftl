  <div class="span2 main-menu-span">
	<div class="well sidebar-nav">
	
	<ul class="nav nav-tabs nav-stacked main-menu">
		<li class="nav-header hidden-tablet">&#24555;&#25463;&#26041;&#24335;</li>
		
		<#if !subscriptionId??>
			<li><a href="<@ofbizUrl>EditSubscription</@ofbizUrl>">${uiLabelMap.ProductNewSubscription}</a></li>
			<li><a href="<@ofbizUrl>FindSubscriptionResource</@ofbizUrl>">${uiLabelMap.PageTitleFindSubscriptionResource}</a></li>
		<#else>

        <#assign EditSubscription="EditSubscription?subscriptionId=${subscriptionId}" />
        <li><a href="<@ofbizUrl>${EditSubscription}</@ofbizUrl>">${uiLabelMap.ProductSubscription}</a></li>

        <#assign EditSubscriptionAttributes="EditSubscriptionAttributes?subscriptionId=${subscriptionId}" />
        <li><a href="<@ofbizUrl>${EditSubscriptionAttributes}</@ofbizUrl>">${uiLabelMap.ProductSubscriptionAttributes}</a></li>

        <#assign EditSubscriptionCommEvent="EditSubscriptionCommEvent?subscriptionId=${subscriptionId}" />
        <li><a href="<@ofbizUrl>${EditSubscriptionCommEvent}</@ofbizUrl>">${uiLabelMap.ProductSubscriptionCommEvent}</a></li>
        
		</#if>
	</ul>  
	
	</div><!--/.well -->
  </div><!--/span2-->  