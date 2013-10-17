
<div id="wrapper" class="container">

  <div id="form">
    <#-- if user is authenticated -->
    <#if userLogin?exists>
	    <!-- topbar starts  navbar-fixed-top -->
		<div class="navbar ">
			<div class="navbar-inner">
				<div class="container-fluid">
					<a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</a>
					<a class="brand" href="/"> <img alt="Charisma Logo" src="<@ofbizContentUrl>${configProperties.get("opentaps.logo")}</@ofbizContentUrl>" /></a>
					
					
					<!-- user dropdown starts -->
					<div class="btn-group pull-right" >
						<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
							<i class="icon-user"></i><span class="hidden-phone"> admin</span>
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li><a href="#">Profile</a></li>
							<li class="divider"></li>
							<li><a href="javascript:void(0);" id="logoutBtn">Logout</a>							    
								<form id="logout" method="post" action="<@ofbizUrl>logout${previousParams?if_exists}</@ofbizUrl>" style="display:none;">
							        <input class="decorativeSubmit" style="width:65px; margin-left:1px;" type="submit"  value="${uiLabelMap.CommonLogout}" />
							    </form>
							</li>
						</ul>
						
					</div>
					<!-- user dropdown ends -->
					
					<div class="top-nav nav-collapse">
						<ul class="nav">
							<#if apps?exists>	                
							      <#list apps as app>
							        <#if (!app.hide?exists || app.hide != "Y") && app.linkUrl?has_content>				          
							              <li class="">
							                <a href="${app.linkUrl}<#if externalKeyParam?exists>?${externalKeyParam}</#if>" >
								                ${uiLabelMap[app.shortName]}
								            </a>
							              </li>
				                    </#if>
						          </#list>
						      </#if>
						</ul>
					</div><!--/.nav-collapse -->
				</div>
			</div>
		</div>
		<!-- topbar ends -->
      <#-- if user IS NOT authenticated, shows login form -->
    <#else>

      <#-- handles service error messages -->
	
      <#if requestAttributes.errorMessageList?has_content><#assign errorMessageList=requestAttributes.errorMessageList></#if>
      <#if requestAttributes.eventMessageList?has_content><#assign eventMessageList=requestAttributes.eventMessageList></#if>
      <#if requestAttributes.serviceValidationException?exists><#assign serviceValidationException = requestAttributes.serviceValidationException></#if>
      <#if requestAttributes.uiLabelMap?has_content><#assign uiLabelMap = requestAttributes.uiLabelMap></#if>

      <#if !errorMessage?has_content>
        <#assign errorMessage = requestAttributes._ERROR_MESSAGE_?if_exists/>
      </#if>
      <#if !errorMessageList?has_content>
        <#assign errorMessageList = requestAttributes._ERROR_MESSAGE_LIST_?if_exists/>
      </#if>
      <#if !eventMessage?has_content>
        <#assign eventMessage = requestAttributes._EVENT_MESSAGE_?if_exists/>
      </#if>
      <#if !eventMessageList?has_content>
        <#assign eventMessageList = requestAttributes._EVENT_MESSAGE_LIST_?if_exists/>
      </#if>

      <#-- display the error messages -->
      <#if (errorMessage?has_content || errorMessageList?has_content)>
        <div id="errorDiv" class="alert alert-error">
          <h4>${uiLabelMap.CommonFollowingErrorsOccurred}:</h4>
          <#if errorMessage?has_content && errorMessage != "null">
            <p>${errorMessage}</p>
          </#if>
          <#if errorMessageList?has_content>
            <#list errorMessageList as errorMsg>
              <#if errorMsg?exists && errorMsg != "null">
                <p>${errorMsg}</p>
              </#if>
            </#list>
          </#if>
        </div>
      </#if>

      <#-- display the event messages -->
      <#if (eventMessage?has_content || eventMessageList?has_content)>
        <div id="errorDiv" class="serviceError">
          <p>${uiLabelMap.CommonFollowingOccurred}:</p>
          <#if eventMessage?has_content && eventMessage != "null">
            <p>${eventMessage}</p>
          </#if>
          <#if eventMessageList?has_content && eventMessageList != "null">
            <#list eventMessageList as eventMsg>
              <#if errorMsg?exists && errorMsg != "null">
                <p>${eventMsg}</p>
              </#if>
            </#list>
          </#if>
        </div>
      </#if>


      <#-- handles service error messages -->
      
      <div class="container-fluid">
		<div class="row-fluid">
		
			<div class="row-fluid">
				<div class="span12 center login-header">
					<h2><img src="<@ofbizContentUrl>${configProperties.get("opentaps.logo")}</@ofbizContentUrl>" /></h2>
				</div><!--/span-->
			</div><!--/row-->
			
			<div class="row-fluid">
				<div class="well span5 center login-box">
					
					<form class="form-horizontal" method="post" action="<@ofbizUrl>login${previousParams?if_exists}</@ofbizUrl>">
						<fieldset>
							<div class="input-prepend" title="Username" data-rel="tooltip">
								<span class="add-on"><i class="icon-user"></i></span>
								<input autofocus class="input-large span10" name="USERNAME" id="username" type="text" value="" placeholder="${uiLabelMap.CommonUsername}"/>
							</div>
							<div class="clearfix"></div>

							<div class="input-prepend" title="Password" data-rel="tooltip">
								<span class="add-on"><i class="icon-lock"></i></span>
								<input class="input-large span10" name="PASSWORD" id="password" type="password" value="" placeholder="${uiLabelMap.CommonPassword}"/>
							</div>
							<div class="clearfix"></div>

							
							<div class="clearfix"></div>

							<p class="center span5">
							<button type="submit" class="btn btn-primary">${uiLabelMap.CommonLogin}</button>
							</p>
						</fieldset>
					</form>
				</div><!--/span-->
			</div><!--/row-->
				</div><!--/fluid-row-->
		
	</div><!--/.fluid-container-->
     	
    </#if>
    <br/><br/>
    <!--@include location="component://opentaps-common/webapp/common/includes/latestnews.ftl"/-->
  </div>

<#if userLogin?exists>
	<div class="container-fluid">
		<div class="row-fluid">
				

			
			<noscript>
				&lt;div class="alert alert-block span10"&gt;
					&lt;h4 class="alert-heading"&gt;Warning!&lt;/h4&gt;
					&lt;p&gt;You need to have &lt;a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank"&gt;JavaScript&lt;/a&gt; enabled to use this site.&lt;/p&gt;
				&lt;/div&gt;
			</noscript>
			
			<div id="content" class="span12" style="margin-left:0;">
			<!-- content starts -->
			

			<div>
				<ul class="breadcrumb">
					<li>
						<a href="#">${uiLabelMap.CommonHome}</a>
					</li>
				</ul>
			</div>
			
			 <#if apps?exists>
			      <#assign iCount =0>
			      <#assign appList=[]>
			      <div class="sortable row-fluid ui-sortable">
			      <#list apps as app>			      
			        				      		
			      		<#if (!app.hide?exists || app.hide != "Y") && app.linkUrl?has_content>
				        	<a data-rel="tooltip" class="well span3 top-block" href="${app.linkUrl}<#if externalKeyParam?exists>?${externalKeyParam}</#if>" data-original-title="6 new members.">			          
				                <span class="icon32 icon-red icon-user"></span>
								<div>${uiLabelMap[app.shortName]}</div>			              
					        </a>
					        <#assign iCount=iCount+1>
					        <#if (iCount%4==0)>
					            </div>
					        	<div class="sortable row-fluid ui-sortable">
					        </#if>
		                </#if>			      	
			      	
			      </#list> 
			         </div>
			       
		      </#if>
		      
			

		  
       
					<!-- content ends -->
			</div><!--/#content.span10-->
				</div><!--/fluid-row-->
				
		<hr>

		<div class="modal hide fade" id="myModal">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">×</button>
				<h3>Settings</h3>
			</div>
			<div class="modal-body">
				<p>Here settings can be configured...</p>
			</div>
			<div class="modal-footer">
				<a href="#" class="btn" data-dismiss="modal">Close</a>
				<a href="#" class="btn btn-primary">Save changes</a>
			</div>
		</div>

		
		
	</div>
</#if>
</div>  <#-- end of wrapper-->

