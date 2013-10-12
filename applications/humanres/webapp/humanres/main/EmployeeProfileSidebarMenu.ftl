  <div class="span2 main-menu-span">
	<div class="well sidebar-nav">
	
	<ul class="nav nav-tabs nav-stacked main-menu">
		<li class="nav-header hidden-tablet">&#24555;&#25463;&#26041;&#24335;</li>
		
		<#--<if-has-permission permission="HUMANRES" action="_VIEW"/>
            <not><if-empty field="partyId"/></not> -->
        
        <#if partyId??>
        <#assign EmployeeProfile="EmployeeProfile?partyId=${partyId}" />
        <li><a href="<@ofbizUrl>${EmployeeProfile}</@ofbizUrl>">${uiLabelMap.PartyProfile}</a></li>

        <#assign ListEmployment="ListEmployments?partyId=${partyId}" />
        <li><a href="<@ofbizUrl>${ListEmployment}</@ofbizUrl>">${uiLabelMap.HumanResEmployment}</a></li>

        <#assign ListEmplPositions="ListEmplPositions?partyId=${partyId}" />
        <li><a href="<@ofbizUrl>${ListEmplPositions}</@ofbizUrl>">${uiLabelMap.HumanResEmployeePosition}</a></li>

        <#assign EditEmployeeSkills="EditEmployeeSkills?partyId=${partyId}" />
        <li><a href="<@ofbizUrl>${EditEmployeeSkills}</@ofbizUrl>">${uiLabelMap.HumanResSkills}</a></li>

        <#assign EditEmployeeQuals="EditEmployeeQuals?partyId=${partyId}" />
        <li><a href="<@ofbizUrl>${EditEmployeeQuals}</@ofbizUrl>">${uiLabelMap.HumanResPartyQualification}</a></li>

        <#assign EditEmployeeTrainings="EditEmployeeTrainings?partyId=${partyId}" />
        <li><a href="<@ofbizUrl>${EditEmployeeTrainings}</@ofbizUrl>">${uiLabelMap.HumanResTraining}</a></li>

        <!-- I think these don't belong here, I'll get to these in short while.
        <#assign name="EditEmployeeEmploymentApps" title="${uiLabelMap.HumanResEmploymentApp}">
            <link target="EditEmployeeEmploymentApps">
                <parameter param-name="partyId"/>
            </link>
        </menu-item>
        <#assign name="EditEmployeeResumes" title="${uiLabelMap.HumanResPartyResume}">
            <link target="EditEmployeeResumes">
                <parameter param-name="partyId"/>
            </link>
        </menu-item>
        <#assign name="EditEmployeePerformanceNotes" title="${uiLabelMap.HumanResPerfNote}">
            <link target="EditEmployeePerformanceNotes">
                <parameter param-name="partyId"/>
            </link>
        </menu-item> -->
        <#assign EditEmployeeLeaves="EditEmployeeLeaves?partyId=${partyId}" />
        <li><a href="<@ofbizUrl>${EditEmployeeLeaves}</@ofbizUrl>">${uiLabelMap.HumanResEmplLeave}</a></li>
		</#if>
	</ul>  
	
	</div><!--/.well -->
  </div><!--/span2-->  