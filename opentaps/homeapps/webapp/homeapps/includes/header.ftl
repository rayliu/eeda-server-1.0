

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta name="description" content="Eeda, ERP, a fully featured, responsive, system.">
<meta name="author" content="Eeda365.com, Ray Liu">

	<!-- The styles -->
	<link id="bs-css" href="/eeda/css/bootstrap-cerulean.css" rel="stylesheet">
	<style type="text/css">
	  body {
		padding-bottom: 40px;
	  }
	  .sidebar-nav {
		padding: 9px 0;
	  }
	</style>
	<link href="/eeda/css/bootstrap-responsive.css" rel="stylesheet">
	<link href="/eeda/css/charisma-app.css" rel="stylesheet">
	<link href="/eeda/css/jquery-ui-1.8.21.custom.css" rel="stylesheet">
	<link href='/eeda/css/fullcalendar.css' rel='stylesheet'>
	<link href='/eeda/css/fullcalendar.print.css' rel='stylesheet'  media='print'>
	<link href='/eeda/css/chosen.css' rel='stylesheet'>
	<link href='/eeda/css/uniform.default.css' rel='stylesheet'>
	<link href='/eeda/css/colorbox.css' rel='stylesheet'>
	<link href='/eeda/css/jquery.cleditor.css' rel='stylesheet'>
	<link href='/eeda/css/jquery.noty.css' rel='stylesheet'>
	<link href='/eeda/css/noty_theme_default.css' rel='stylesheet'>
	<link href='/eeda/css/elfinder.min.css' rel='stylesheet'>
	<link href='/eeda/css/elfinder.theme.css' rel='stylesheet'>
	<link href='/eeda/css/jquery.iphone.toggle.css' rel='stylesheet'>
	<link href='/eeda/css/opa-icons.css' rel='stylesheet'>
	<link href='/eeda/css/uploadify.css' rel='stylesheet'>
	
    
	<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<!-- The fav icon -->
	<link rel="shortcut icon" href="img/favicon.ico">
 <#-- TODO: find the way to import CSS from css component folder
  For now we are getting CSS from the opentaps_css directory inside opentaps-common.
 -->
 
<link rel="shortcut icon" href="<@ofbizContentUrl>/opentaps_images/favicon.ico</@ofbizContentUrl>">


    <script type="text/javascript">
        function writeAppDetails(appId, appName, appDescr){
            var id = document.getElementById('appId');
            var name = document.getElementById('appName');
            var description = document.getElementById('appDescr');

            id.innerHTML = appId;
            name.innerHTML = appName;
            description.innerHTML = appDescr;
        }

        function forgotPasswd(){
            //if the errorDiv is present, increase the heigth of the container
            if(document.getElementById('errorDiv')){
               document.getElementById('container').style.height='540px';
               document.getElementById('form').style.height='380px';
            }

            var forgotPasswdForm = document.getElementById('forgotpasswd');
            forgotPasswdForm.style.display='block';
        }
    </script>


<title>${uiLabelMap.OpentapsProductName}</title>
</head>

<body>


