  <div class="span2 main-menu-span">
	<div class="well sidebar-nav">
	

	 <#assign CommonFindUrl = "FindCommunicationEvents"/>
     <#assign CommonOverviewUrl = "ViewCommunicationEvent?communicationEventId=${parameters.communicationEventId?if_exists}"/>
     <#assign PartyCommEventUrl = "EditCommunicationEvent?communicationEventId=${parameters.communicationEventId?if_exists}"/>
     
	<ul class="nav nav-tabs nav-stacked main-menu">	    
		<li class="nav-header hidden-tablet">&#24555;&#25463;&#26041;&#24335;</li>
	    <li><a href="<@ofbizUrl>${CommonFindUrl}</@ofbizUrl>">${uiLabelMap.CommonFind}</a></li>       
		
		<#if (communicationEvent?has_content)>	
		<#--condition><not><if-empty field="communicationEvent"/></not></condition-->		
		<li><a href="<@ofbizUrl>${CommonOverviewUrl}</@ofbizUrl>">${uiLabelMap.CommonOverview}</a></li>	
		
		<#--condition><not><if-empty field="communicationEvent"/></not></condition-->	    
	    <li><a href="<@ofbizUrl>${PartyCommEventUrl}</@ofbizUrl>">${uiLabelMap.PartyCommEvent}</a></li>
	    
	    <#assign UpdateCommPurposesUrl="UpdateCommPurposes?communicationEventId=${parameters.communicationEventId?if_exists}"/> 
        <#-- condition><not><if-empty field="communicationEvent"/></not></condition-->
        <li><a href="<@ofbizUrl>${UpdateCommPurposesUrl}</@ofbizUrl>">${uiLabelMap.PartyEventPurpose}</a></li>        
       
        <#assign UpdateCommRolesUrl="UpdateCommRoles?communicationEventId=${parameters.communicationEventId?if_exists}">
        <#--condition><not><if-empty field="communicationEvent"/></not></condition-->
        <li><a href="<@ofbizUrl>${UpdateCommRolesUrl}</@ofbizUrl>">${uiLabelMap.PartyRoles}</a></li>
       
        <#assign UpdateCommWorkEffortsUrl="ListCommWorkEfforts?communicationEventId=${parameters.communicationEventId?if_exists}"/>
        <#--condition><not><if-empty field="communicationEvent"/></not></condition-->
        <li><a href="<@ofbizUrl>${UpdateCommWorkEffortsUrl}</@ofbizUrl>">${uiLabelMap.PartyCommWorkEfforts}</a></li>
       
        <#assign CommContentUrl="ListCommContent?communicationEventId=${parameters.communicationEventId?if_exists}" />
        <#--condition><not><if-empty field="communicationEvent"/></not></condition-->
        <li><a href="<@ofbizUrl>${UpdateCommRolesUrl}</@ofbizUrl>">${uiLabelMap.CommonContent}</a></li>
		</#if>
		
        <#assign ListUnknownPartyCommsUrl="listUnknownPartyComms"/>
        <li><a href="<@ofbizUrl>${ListUnknownPartyCommsUrl}</@ofbizUrl>">${uiLabelMap.PartyEmailFromUnknownParties}</a></li>    
        
        <#assign FindCommunicationByOrderUrl="FindCommunicationByOrder"/>
        <li><a href="<@ofbizUrl>${FindCommunicationByOrderUrl}</@ofbizUrl>">${uiLabelMap.PartyFindCommunicationsByOrder}</a></li>
        
        <#if (communicationEvent?has_content)>	
        <#assign UpdateCommOrdersUrl="UpdateCommOrders?communicationEventId=${parameters.communicationEventId?if_exists}"/>
        <#--condition><not><if-empty field="communicationEvent"/></not></condition-->
        <li><a href="<@ofbizUrl>${UpdateCommRolesUrl}</@ofbizUrl>">${uiLabelMap.OrderOrders}</a></li>

        <#assign UpdateCommProductsUrl="UpdateCommProducts?communicationEventId=${parameters.communicationEventId?if_exists}"/>
        <#--condition><not><if-empty field="communicationEvent"/></not></condition-->
        <li><a href="<@ofbizUrl>${UpdateCommProductsUrl}</@ofbizUrl>">${uiLabelMap.ProductProducts}</a></li>    
		</#if>
	</ul>  

	</div><!--/.well -->
  </div><!--/span2-->  