  <div class="span2 main-menu-span">
	<div class="well sidebar-nav">
	
	<ul class="nav nav-tabs nav-stacked main-menu">	    
		<li class="nav-header hidden-tablet">&#24555;&#25463;&#26041;&#24335;</li>
	    <#assign EditPartyInvitation="editPartyInvitation?partyInvitationId"/>
	    <li><a href="<@ofbizUrl>${EditPartyInvitation}</@ofbizUrl>">${uiLabelMap.PartyInvitation}</a></li>
        
        <#assign PartyInvitationGroupAssocs="PartyInvitationGroupAssocs?partyInvitationId" />
        <li><a href="<@ofbizUrl>${EditPartyInvitation}</@ofbizUrl>">${uiLabelMap.PartyInvitationGroupAssoc}</a></li>
    
        <#assign PartyInvitationRoleAssocs="PartyInvitationRoleAssocs?partyInvitationId" />
        <li><a href="<@ofbizUrl>${PartyInvitationRoleAssocs}</@ofbizUrl>">${uiLabelMap.PartyInvitationRoleAssoc}</a></li>

	</ul>  

	</div><!--/.well -->
  </div><!--/span2-->  