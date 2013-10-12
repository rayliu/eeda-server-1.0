  <div class="span2 main-menu-span">
	<div class="well sidebar-nav">
	
	<ul class="nav nav-tabs nav-stacked main-menu">
		<li class="nav-header hidden-tablet">&#24555;&#25463;&#26041;&#24335;</li>
		<#--and>
            <if-has-permission permission="HUMANRES" action="_VIEW"/>
            <not><if-empty field="emplPosition"/></not>
        </and-->
		<#if !emplPosition??>
        <li><a href="<@ofbizUrl>EditEmplPosition</@ofbizUrl>">${uiLabelMap.HumanResNewEmplPosition}</a></li>
        
        <#else>
        <#assign EmplPositionView="emplPositionView?emplPositionId=${emplPositionId}" />
        <li><a href="<@ofbizUrl>${EmplPositionView}</@ofbizUrl>">${uiLabelMap.CommonSummary}</a></li>

        <#assign EditEmplPosition="EditEmplPosition?emplPositionId=${emplPositionId}" />
        <li><a href="<@ofbizUrl>${EditEmplPosition}</@ofbizUrl>">${uiLabelMap.HumanResEmployeePosition}</a></li>

        <#assign EditEmplPositionFulfillments="EditEmplPositionFulfillments?emplPositionId=${emplPositionId}" />
        <li><a href="<@ofbizUrl>${EditEmplPositionFulfillments}</@ofbizUrl>">${uiLabelMap.HumanResPositionFulfillments}</a></li>

        <#assign EditEmplPositionResponsibilities="EditEmplPositionResponsibilities?emplPositionId=${emplPositionId}" />
        <li><a href="<@ofbizUrl>${EditEmplPositionResponsibilities}</@ofbizUrl>">${uiLabelMap.HumanResEmplPositionResponsibilities}</a></li>

        <#assign EditEmplPositionReportingStructs="EditEmplPositionReportingStructs?emplPositionId=${emplPositionId}" />
        <li><a href="<@ofbizUrl>${EditEmplPositionReportingStructs}</@ofbizUrl>">${uiLabelMap.HumanResEmplPositionReportingStruct}</a></li>
        
        </#if>
	</ul>  
	
	</div><!--/.well -->
  </div><!--/span2-->  