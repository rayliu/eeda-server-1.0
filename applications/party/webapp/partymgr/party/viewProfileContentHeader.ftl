
	  
	<div id="content" class="span10">
	<!-- content starts -->
	
	    
	    <!--div>
			<ul class="breadcrumb">
				<li>
					<a href="#">${uiLabelMap.PartyProfile}</a>
				</li>
			</ul>
		</div-->
		
	<#if (parameters.partyId?has_content) > 
    <@include location="component://party/webapp/partymgr/party/viewProfileContentSubMenu.ftl" />
    </#if>
