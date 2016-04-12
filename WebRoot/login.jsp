<%@ page language="java" import="java.util.*,com.entity.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
	<!--[if IE 8]>
		<html xmlns="http://www.w3.org/1999/xhtml" class="ie8" lang="zh-CN">
	<![endif]-->
	<!--[if !(IE 8) ]><!-->
		<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
	<!--<![endif]-->
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>whicu &rsaquo; 登录</title>
	<link rel='stylesheet' id='buttons-css'  href='css/login.buttons.min.css' type='text/css' media='all' />
	<link rel='stylesheet' id='dashicons-css'  href='css/dashicons.min.css' type='text/css' media='all' />
<link rel='stylesheet' id='login-css'  href='css/login.min.css' type='text/css' media='all' />
<meta name='robots' content='noindex,follow' />
	</head>
	<body class="login login-action-login wp-core-ui  locale-zh-cn">
	<div id="login">
		<h1><a href="">whicu</a></h1>
	
	<form name="loginform" id="loginform" action="users.do" method="post">
		<p>
			<label for="user_login">用户名<br />
			<input type="text" name="item.loginName" id="user_login" class="input" value="" size="20" /></label>
		</p>
		<p>
			<label for="user_pass">密码<br />
			<input type="password" name="item.password" id="user_pass" class="input" value="" size="20" /></label>
		</p>
		<p class="forgetmenot">
			<label for="rememberme"><input name="rememberme" type="checkbox" id="rememberme" value="forever"/> 记住我的登录信息</label>
		</p>
		<p class="submit">
			<input type="hidden" name="operate" value="doLogin">
			<input type="submit" name="wp-submit" id="wp-submit" class="button button-primary button-large" value="登录" />
		</p>
	</form>


	<p id="backtoblog"><a href="http://localhost:8080/" title="不知道自己在哪？">&larr; 回到whicu</a></p>
	
	</div>

	
		<div class="clear"></div>
	</body>
	</html>
	