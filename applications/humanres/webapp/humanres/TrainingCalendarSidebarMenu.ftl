  <div class="span2 main-menu-span">
	<div class="well sidebar-nav">
	
	<ul class="nav nav-tabs nav-stacked main-menu">
		<li class="nav-header hidden-tablet">&#24555;&#25463;&#26041;&#24335;</li>
		
		<#assign TrainingCalendar="TrainingCalendar" />
		<li><a href="<@ofbizUrl>${TrainingCalendar}</@ofbizUrl>">${uiLabelMap.HumanResTraining} ${uiLabelMap.WorkEffortCalendar}</a></li>

		<#--condition><if-has-permission permission="EMPLOYEE" action="_VIEW"/></condition-->
		<#if security.hasEntityPermission("EMPLOYEE", "_VIEW", session)>
        <#assign FindTrainingStatus="FindTrainingStatus" />
        <li><a href="<@ofbizUrl>${FindTrainingStatus}</@ofbizUrl>">${uiLabelMap.HumanResTrainingStatus}</a></li>
        </#if>
        
        <#--condition><if-has-permission permission="HUMANRES" action="_ADMIN"/></condition-->
        <#if security.hasEntityPermission("HUMANRES", "_ADMIN", session)>
        <#assign FindTrainingApprovals="FindTrainingApprovals" />
        <li><a href="<@ofbizUrl>${FindTrainingApprovals}</@ofbizUrl>">${uiLabelMap.HumanResTrainingApprovals}</a></li>
        </#if>
		
	</ul>  
	
	</div><!--/.well -->
  </div><!--/span2-->  