  <div class="span2 main-menu-span">
	<div class="well sidebar-nav">
	
	<ul class="nav nav-tabs nav-stacked main-menu">
		<li class="nav-header hidden-tablet">&#24555;&#25463;&#26041;&#24335;</li>
		<#assign EmployeeLeave="FindEmplLeaves" />
		<li><a href="<@ofbizUrl>${EmployeeLeave}</@ofbizUrl>">${uiLabelMap.HumanResEmployeeLeave}</a></li>

		<#--condition><if-has-permission permission="HUMANRES" action="_APPROVE"/></condition-->
		<#if security.hasEntityPermission("HUMANRES", "_APPROVE", session)>
        <#assign Approval="FindLeaveApprovals" />
        <li><a href="<@ofbizUrl>${Approval}</@ofbizUrl>">${uiLabelMap.HumanResLeaveApproval}</a></li>
		</#if>
	</ul>  
	
	</div><!--/.well -->
  </div><!--/span2-->  