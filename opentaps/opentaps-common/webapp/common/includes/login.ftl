<#--
 * Copyright (c) Open Source Strategies, Inc.
 * 
 * Opentaps is free software: you can redistribute it and/or modify it
 * under the terms of the GNU Affero General Public License as published
 * by the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Opentaps is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with Opentaps.  If not, see <http://www.gnu.org/licenses/>.
-->
<#-- Copyright (c) Open Source Strategies, Inc. -->

<#--
 *  Copyright (c) 2003 The Open For Business Project - www.ofbiz.org
 *
 *  Permission is hereby granted, free of charge, to any person obtaining a 
 *  copy of this software and associated documentation files (the "Software"), 
 *  to deal in the Software without restriction, including without limitation 
 *  the rights to use, copy, modify, merge, publish, distribute, sublicense, 
 *  and/or sell copies of the Software, and to permit persons to whom the 
 *  Software is furnished to do so, subject to the following conditions:
 *
 *  The above copyright notice and this permission notice shall be included 
 *  in all copies or substantial portions of the Software.
 *
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS 
 *  OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF 
 *  MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
 *  IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY 
 *  CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT 
 *  OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR 
 *  THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 *@author     Andy Zeneski (jaz@ofbiz.org)
 *@author     Olivier Heintz (olivier.heintz@nereide.biz) 
 *@version    $Rev: 314 $
 *@since      2.1
-->
<#assign previousParams = sessionAttributes._PREVIOUS_PARAMS_?if_exists/>
<#if previousParams?has_content>
  <#assign previousParams = "?" + previousParams/>
</#if>

<#assign username = requestParameters.USERNAME?default((sessionAttributes.autoUserLogin.userLoginId)?default(""))>
<#if username != "">
  <#assign focusName = false/>
<#else/>
  <#assign focusName = true/>
</#if>


<@import location="component://opentaps-common/webapp/common/includes/lib/opentapsFormMacros.ftl"/>
<div id="wrapper" class="container">
<div class="container-fluid">
		<div class="row-fluid">
		
			<div class="row-fluid">
				<div class="span12 center login-header">
					<h2><img src="<@ofbizContentUrl>${configProperties.get("opentaps.logo")}</@ofbizContentUrl>" /></h2>
				</div><!--/span-->
			</div><!--/row-->
			
			<div class="row-fluid">
				<div class="well span5 center login-box">
					
					<form id="login_form" class="form-horizontal" method="post" action="<@ofbizUrl>login${previousParams?if_exists}</@ofbizUrl>">
						<fieldset>
							<div class="input-prepend">
								<span class="add-on"><i class="icon-user"></i></span>
								<input autofocus class="input-large span10" name="USERNAME" id="username" type="text" value="" placeholder="${uiLabelMap.CommonUsername}"/>
							</div>
							<div class="clearfix"></div>

							<div class="input-prepend">
								<span class="add-on"><i class="icon-lock"></i></span>
								<input class="input-large span10" name="PASSWORD" id="password" type="password" value="" placeholder="${uiLabelMap.CommonPassword}"/>
							</div>
							<div class="clearfix"></div>

							
							<div class="clearfix"></div>

							<p class="center span5">
							<button type="submit" class="btn btn-primary">${uiLabelMap.CommonLogin}</button>
							
							</p>
							<p><a id='fp_link' href="#">${uiLabelMap.CommonForgotYourPassword}?</a></p>
						</fieldset>
					</form>
					<form id = 'fp_form' class="form-horizontal" method="post" action="<@ofbizUrl>forgotpassword${previousParams}</@ofbizUrl>" style='display:none;'>
						<fieldset>
							<div class="input-prepend">
								<span class="add-on"><i class="icon-user"></i></span>
								<input autofocus class="input-large span10" name="USERNAME" id="username" type="text" value="<#if requestParameters.USERNAME?has_content>${requestParameters.USERNAME}<#elseif autoUserLogin?has_content>${autoUserLogin.userLoginId}</#if>" placeholder="${uiLabelMap.CommonUsername}"/>
							</div>
														
							<div class="clearfix"></div>

							<p class="center span5">
								<button type="submit" id="fp_link" class="btn btn-primary">${uiLabelMap.CommonEmailPassword}</button>							
							</p>
							<p><a id='back_link' href="#">${uiLabelMap.back}</a></p>
						</fieldset>
					</form>
				</div><!--/span-->
			</div><!--/row-->
				</div><!--/fluid-row-->
		
	</div><!--/.fluid-container-->
</div>


<#assign greetingLabel = opentapsApplicationName?default("opentaps")?cap_first + "LoginGreeting"/>
<!--#include "keyboard-shortcuts.ftl"/-->

<!--@include location="component://opentaps-common/webapp/common/includes/latestnews.ftl"/-->