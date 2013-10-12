  <div class="span2 main-menu-span">
	<div class="well sidebar-nav">
	
	<ul class="nav nav-tabs nav-stacked main-menu">
		<li class="nav-header hidden-tablet">&#24555;&#25463;&#26041;&#24335;</li>
		
		<#assign SkillType="EditSkillTypes" />
		<li><a href="<@ofbizUrl>${SkillType}</@ofbizUrl>">${uiLabelMap.HumanResSkillType}</a></li>

        <#assign ResponsibilityType="EditResponsibilityTypes" />
        <li><a href="<@ofbizUrl>${ResponsibilityType}</@ofbizUrl>">${uiLabelMap.HumanResResponsibilityType}</a></li>
            
        
        <#assign TerminationReason="EditTerminationReasons" />
        <li><a href="<@ofbizUrl>${TerminationReason}</@ofbizUrl>">${uiLabelMap.HumanResTerminationReason}</a></li>
            
        
        <#assign TerminationType="EditTerminationTypes" />
        <li><a href="<@ofbizUrl>${TerminationType}</@ofbizUrl>">${uiLabelMap.HumanResTerminationTypes}</a></li>
        
        <#assign EmplPositionTypes="FindEmplPositionTypes" />
        <li><a href="<@ofbizUrl>${EmplPositionTypes}</@ofbizUrl>">${uiLabelMap.HumanResEmplPositionType}</a></li>
            
        
        <#assign EmplLeaveType="EditEmplLeaveTypes" />
        <li><a href="<@ofbizUrl>${EmplLeaveType}</@ofbizUrl>">${uiLabelMap.HumanResEmplLeaveType}</a></li>
            
        
        <#assign PayGrade="FindPayGrades" />
        <li><a href="<@ofbizUrl>${PayGrade}</@ofbizUrl>">${uiLabelMap.HumanResPayGrade}</a></li>
            
        
        <#assign JobInterviewType="EditJobInterviewType" />
        <li><a href="<@ofbizUrl>${JobInterviewType}</@ofbizUrl>">${uiLabelMap.HumanResJobInterviewType}</a></li>
            
        
        <#assign EditTrainingTypes="EditTrainingTypes" />
        <li><a href="<@ofbizUrl>${EditTrainingTypes}</@ofbizUrl>">${uiLabelMap.HumanResTrainingClassType}</a></li>

	</ul>  
	
	</div><!--/.well -->
  </div><!--/span2-->  