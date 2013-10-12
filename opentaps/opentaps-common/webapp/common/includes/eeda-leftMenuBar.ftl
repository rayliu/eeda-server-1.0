<div class="span2 main-menu-span">
	<div class="well sidebar-nav">
		<#if shortcutGroups?has_content>			
			<ul class="nav nav-tabs nav-stacked main-menu">
				<li class="nav-header hidden-tablet">${uiLabelMap.get(shortcutGroups.uiLabel?default("OpentapsShortcuts"))}</li>
			    <#list shortcutGroups as sg>
			        <#list sg.allowedShortcuts as shortcut>
			        	<li><a class="ajax-link" href="<@ofbizUrl>${shortcut.linkUrl}</@ofbizUrl>">
			        	    <span class="hidden-tablet"> ${uiLabelMap.get(shortcut.uiLabel!)}</span></a>
			        	</li>
				          
			        </#list>
			    </#list>
			</ul>  
		</#if>	
	</div><!--/.well -->
</div><!--/span-->