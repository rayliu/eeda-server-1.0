  <div class="span2 main-menu-span">
	<div class="well sidebar-nav">
	

	 <#assign PartyNewEmailUrl = "${parameters._LAST_VIEW_NAME_}?communicationEventTypeId=EMAIL_COMMUNICATION&amp;partyIdFrom=admin&amp;my=My&amp;statusId=COM_PENDING&amp;form=new&amp;portalPageId=${parameters.portalPageId?if_exists}"/>
     <#assign PartyNewInternalNoteUrl = "${parameters._LAST_VIEW_NAME_}?communicationEventTypeId=COMMENT_NOTE&partyIdFrom=admin&my=My&statusId=COM_PENDING&form=new&portalPageId=${parameters.portalPageId?if_exists}"/>
     <#assign PartyAllEventsUrl = "${parameters._LAST_VIEW_NAME_}?portalPageId=${parameters.portalPageId?if_exists}&all=true"/>
     
	<ul class="nav nav-tabs nav-stacked main-menu">	    
		<li class="nav-header hidden-tablet">&#24555;&#25463;&#26041;&#24335;</li>
	    <#--condition>
                <or>
                    <if-compare field="parameters.all" operator="equals" value="false"/>
                    <if-empty field="parameters.all"/>
                </or>
        </condition-->
	    <li><a href="<@ofbizUrl>${PartyAllEventsUrl}</@ofbizUrl>">${uiLabelMap.PartyAllEvents}</a></li>   
	    
	    
				
		<#-- if-has-permission permission="PARTYMGR_CME-EMAIL_CREATE"/-->		
		<li><a href="<@ofbizUrl>${PartyNewEmailUrl}</@ofbizUrl>">${uiLabelMap.PartyNewEmail}</a></li>	
		
		<#-- if-has-permission permission="PARTYMGR_CME-NOTE_CREATE"/-->	    
	    <li><a href="<@ofbizUrl>${PartyNewInternalNoteUrl}</@ofbizUrl>">${uiLabelMap.PartyNewInternalNote}</a></li>
	</ul>  

	</div><!--/.well -->
  </div><!--/span2-->  