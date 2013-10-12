<ul class="nav nav-tabs">	    
	    <#assign new="EditCommunicationEvent"/>
	    <li><a href="<@ofbizUrl>${new}</@ofbizUrl>">${uiLabelMap.PartyNewCommunication}</a></li>

        <#if parameters.communicationEventId?has_content && communicationEvent.partyIdFrom?has_content>
        <#assign reply="EditCommunicationEvent?parentCommEventId=${parameters.communicationEventId?if_exists}&partyIdFrom=${parameters.partyId?if_exists}&action=REPLY" />
            <#--
                <and>
                    <not><if-empty field="parameters.communicationEventId"/></not>
                    <not><if-empty field="communicationEvent.partyIdFrom"/></not>
                    <if-compare field="communicationEvent.statusId" operator="not-equals" value="COM_UNKNOWN_PARTY"/>
                </and>
            </condition-->
        <li><a href="<@ofbizUrl>${reply}</@ofbizUrl>">${uiLabelMap.PartyReply}</a></li>    

        <#assign forward="EditCommunicationEvent?origCommEventId=${parameters.communicationEventId?if_exists}&action=FORWARD" />
            <#--
                <and>
                    <not><if-empty field="${parameters.communicationEventId}"/></not>
                    <not><if-empty field="communicationEvent.partyIdFrom"/></not>
                    <if-compare field="communicationEvent.statusId" operator="not-equals" value="COM_UNKNOWN_PARTY"/>
                </and>
            </condition-->
        <li><a href="<@ofbizUrl>${forward}</@ofbizUrl>">${uiLabelMap.PartyForward}</a></li>

			<#if communicationEvent.statusId="COM_ENTERED">
	        <#assign createRequestFromCommEvent="editRequestFromCommEvent?communicationEventId=${parameters.communicationEventId?if_exists}" />
	            <#--
	                <and>
	                    <not><if-empty field="parameters.communicationEventId"/></not>
	                    <not><if-empty field="communicationEvent.partyIdFrom"/></not>
	                    <if-has-permission permission="ORDERMGR_CRQ_CREATE"/>
	                    <if-compare field="communicationEvent.statusId" operator="equals" value="COM_ENTERED"/>
	                </and>
	            </condition-->
	        <li><a href="<@ofbizUrl>${createRequestFromCommEvent}</@ofbizUrl>">${uiLabelMap.PartyCreateRequestFromCommEvent}</a></li>
	        </#if>
		</#if>

		<#if (communicationEvent?has_content) && communicationEvent.statusId!="COM_PENDING" && communicationEvent.statusId="COM_ENTERED">
        <#assign createSalesOpportunity="/sfa/control/EditSalesOpportunity?communicationEventId=${parameters.communicationEventId?if_exists}"/>
            <#--
                <and>
                    <not><if-empty field="communicationEvent"/></not>
                    <if-compare field="communicationEvent.statusId" operator="not-equals" value="COM_PENDING"/>
                    <if-compare field="communicationEvent.statusId" operator="equals" value="COM_ENTERED"/>
                </and>
            </condition-->
        <li><a href="${createSalesOpportunity}">${uiLabelMap.PartyCommEventCreateOpportunity}</a></li>
            <#--link target="" url-mode="inter-app" --------  check inter-app should add what param?
                <parameter param-name="" from-field=""/>
            </link-->
       </#if>
       
        <#if (communicationEventRole?has_content)>
        <#assign delete="RemoveCommunicationEventRole?communicationEventId=${parameters.communicationEventId?if_exists}&roleTypeId=${communicationEventRole.roleTypeId?if_exists}&deleteCommEventIfLast=Y&delContentDataResource=Y"/>
            <#--
                <and>
                    <not><if-empty field="communicationEventRole"/></not>
                    <or>
                        <if-has-permission permission="PARTYMGR_CME-EMAIL_DELETE"/>
                        <if-has-permission permission="PARTYMGR_ADMIN"/>
                    </or>
                </and>
            </condition-->
        <li><a href="<@ofbizUrl>${delete}</@ofbizUrl>">${uiLabelMap.CommonDelete}</a></li>    
		</#if>
</ul>  
 