  <#assign viewProfileUrl = "/accounting/control/FindBillingAccount"/>
  
		<ul class="nav nav-tabs">
			<!-- if-service-permission service-name="acctgBasePermissionCheck" main-action="VIEW"/-->
			<li><a href="${viewProfileUrl}">${uiLabelMap.AccountingBillingAccount}</a></li>
			
			<!-- if-service-permission service-name="acctgBasePermissionCheck" main-action="VIEW"/ -->
			<li><a href="/accounting/control/FindFinAccount">${uiLabelMap.AccountingFinAccounts}</a></li>
			   
		    <li><a href="<@ofbizUrl>ListPartyCommEvents</@ofbizUrl>">${uiLabelMap.PartyCommunications}</a></li>
		    
		    <!-- if-has-permission permission="ORDERMGR" action="_VIEW"/-->
		    <li><a href="/ordermgr/control/FindRequest">${uiLabelMap.PartyPartyRequests}</a></li>
		    
		    <!-- if-has-permission permission="ORDERMGR" action="_VIEW"/ -->
		    <li><a href="/ordermgr/control/FindQuote">${uiLabelMap.OrderOrderQuotes}</a></li>
		    
		    <!-- if-has-permission permission="ORDERMGR" action="_VIEW"/-->
		    <li><a href="/ordermgr/control/searchorders">${uiLabelMap.OrderOrders}</a></li>
		    
		    <!-- if-has-permission permission="ORDERMGR" action="_CREATE"/-->
		    <li><a href="/ordermgr/control/EditQuote">${uiLabelMap.OrderNewQuote}</a></li>
		    
		    <!-- if-has-permission permission="ORDERMGR" action="_CREATE"/-->
		    <li><a href="/ordermgr/control/checkinits">${uiLabelMap.OrderNewOrder}</a></li>		    
		</ul>  