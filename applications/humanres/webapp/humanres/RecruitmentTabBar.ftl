<#--
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.
-->
<#-- This file has been modified by Open Source Strategies, Inc. -->

<#--if security.hasEntityPermission("PARTYMGR", "_VIEW", session)-->
  
    <#assign selected = tabButtonItem?default("void")>
   
      <ul class="nav nav-tabs">
      	<#assign InternalJobPosting="FindInternalJobPosting" />
      	<li><a href="<@ofbizUrl>${InternalJobPosting}</@ofbizUrl>">${uiLabelMap.HumanResInternalJobPosting} ${uiLabelMap.CommonApplications}</a></li>

		<#--condition><if-has-permission permission="HUMANRES" action="_ADMIN"/></condition-->
		<#if security.hasEntityPermission("HUMANRES", "_ADMIN", session)>
        <#assign JobInterview="FindJobInterview" />
        <li><a href="<@ofbizUrl>${JobInterview}</@ofbizUrl>">${uiLabelMap.HumanResJobInterview}</a></li>
		</#if>
		
		<#--condition><if-has-permission permission="HUMANRES" action="_APPROVE"/></condition-->
		<#if security.hasEntityPermission("HUMANRES", "_APPROVE", session)>		
        <#assign Approval="FindApprovals" />
        <li><a href="<@ofbizUrl>${Approval}</@ofbizUrl>">${uiLabelMap.HumanResApproval}</a></li>
        </#if>
        
        <#--condition><if-has-permission permission="HUMANRES" action="_ADMIN"/></condition-->
        <#if security.hasEntityPermission("HUMANRES", "_ADMIN", session)>
        <#assign Relocation="FindRelocation" />
        <li><a href="<@ofbizUrl>${Relocation}</@ofbizUrl>">${uiLabelMap.HumanResRelocation}</a></li>
		</#if>
 
      </ul>

<#--else>
  <h2>${uiLabelMap.PartyMgrViewPermissionError}</h2>
</#if-->