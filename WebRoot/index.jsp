<%@ page language="java" import="java.util.*,com.entity.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>无标题文档</title>
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css"/>
<link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>

<body>
	<%
		List list = (List)session.getAttribute("ARTICLE_LIST"); 
		if(list==null){
			response.sendRedirect("article.do?operate=doSelectAll");
		}
	%>

	<c:if test="${sessionScope.USER != null }">
		<div class="adminbar">
	    	<ul class="adminbar_information">
	        	<li class="logo">
	            	<a href="#" class="fa fa-home"></a>
	            </li>
	            <li><i class="fa fa-power-off"></i> whicu</li>
	            <li><i class="fa fa-refresh"></i> 0</li>
	            <li><i class="fa fa-comment-o"></i> 0</li>
	            <li><i class="fa fa-pencil"></i> 0</li>
	        </ul>
	        <ul class="adminbar_user">
	        	<li>你好，${sessionScope.USER.realName }<img src="images/ico_logo_default.png" /></li>
	            <div class="user_content">
	        		<div class="ico_logo"><img src="images/ico_logo_default.png" /></div>
	                <span class="ico_text">
	                	<p>admin</p>
	                    <p>编辑个人资料</p>
	                    <p><a href="users.do?operate=doExit">退出</a></p>
	                </span>
	        	</div>
	        </ul>
	    </div>
	</c:if>
    <div class="main">
        <div class="left">
            <div class="title_wai">
            	<div class="title">
            		<a href="#">whicu</a>
                    <p>又一个WordPress站点</p>
            	</div>
            </div>
            <div class="widget">
            	<h2 class="widget_title">近期文章</h2>
                <!-- -->
                <ul class="widget_text">
                	<li><a href="#" ><c:if test="${sessionScope.ARTICLE_LIST[0] != null }"> ${sessionScope.ARTICLE_LIST[0].title }</c:if></a></li>
                	<li><a href="#" ><c:if test="${sessionScope.ARTICLE_LIST[1] != null }"> ${sessionScope.ARTICLE_LIST[1].title }</c:if></a></li>
                	<li><a href="#" ><c:if test="${sessionScope.ARTICLE_LIST[2] != null }"> ${sessionScope.ARTICLE_LIST[2].title }</c:if></a></li>
                </ul>
            </div>
            <div class="widget">
            	<h2 class="widget_title">分类目录</h2>
                <!-- -->
                <ul class="widget_text">
	                <c:forEach var="item" items="${sessionScope.ARTICLE_TYPE_LIST }">
	                	<li><a href="#" ><b>${item.name }</b></a></li>
	                </c:forEach>
                </ul>
            </div>
            <div class="widget">
            	<h2 class="widget_title">功能</h2>
                <!-- -->
                <ul class="widget_tools">
	                <c:if test="${sessionScope.USER eq null }">
                		<li><a href="login.jsp" ><b>登录</b></a></li>
                	</c:if>
                	<c:if test="${sessionScope.USER!=null}">
                		<li><a href="users.do?operate=doExit" >登出</a></li>
                	</c:if>
                    <li><a href="#" >文章RSS</a></li>
                    <li><a href="#" >评论RSS</a></li>
                    <li><a href="#" >admxj.com</a></li>
                </ul>
            </div>
        </div>
        <!-- 右边 -->
        <div class="right">
        	<!-- -->
        	<c:forEach var="item" items="${sessionScope.ARTICLE_LIST }">
        		<div class="text_index" >
	            	<div class="text_content">
	                	<h2><a href="article.do?operate=doSelectById&id=${item.id }">${item.title}</a></h2>
	                    <div class="text_about">              	
							<c:if test="${fn:length(item.content)>60 }">${ fn:substring(item.content ,0,60)} ...</c:if>
							<c:if test="${fn:length(item.content)<=60 }">${item.content}</c:if>
	                    </div>
	                </div>
	                <div class="text_author">
	                	<div class="text_author_data">
	                    	<i class="fa fa-calendar"></i> <a href="#"><fmt:formatDate value="${item.date}" pattern="yyyy年MM月dd日"/></a> 
	                        <i class="fa fa-user"> </i><a href="#">${item.users.realName }</a>
	                    </div>
	                </div>
	            </div>
        	</c:forEach>
            
            <!--  -->
        </div>
	</div>
</body>
</html>
