<%@ page language="java" import="java.util.*,com.entity.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="zh-CN" class="no-js">
<head>
	<meta charset="UTF-8">
	<title>世界，您好！ &#8211; whicu</title>
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	<link rel='stylesheet' id='twentyfifteen-style-css'  href="css/textInfo_style.css" type='text/css' media='all' />

	</head>
	<script type="text/javascript">
		function login(){
			window.location.href='login.jsp';
		}
	</script>
<body class="single single-post postid-1 single-format-standard">
<div id="page" class="hfeed site">
	<div id="sidebar" class="sidebar">
		<header id="masthead" class="site-header" role="banner">
			<div class="site-branding">
				<p class="site-title"><a href="index.jsp" rel="home">whicu</a></p>
				<p class="site-description">又一个WordPress站点</p>
				<div class="secondary-toggle"><i class="fa fa-align-justify" style="line-height:64px;"></i></div>
			</div><!-- .site-branding -->
		</header><!-- .site-header -->

</div><!-- .sidebar -->

<div id="content" class="site-content">
	<div id="primary" class="content-area">
		<main id="main" class="site-main" role="main">	
			<article id="post-1" class="post-1 post type-post status-publish format-standard hentry category-uncategorized">
				<header class="entry-header">
					<h1 class="entry-title">${sessionScope.Article.title }</h1>	</header><!-- .entry-header -->
                    <div class="entry-content">
                        <p>${sessionScope.Article.content }</p>
                    </div><!-- .entry-content -->
					<footer class="entry-footer">
						<span class="posted-on">
							<i class="fa fa-calendar"></i>
                           	<a href=" " rel="bookmark">
                               	<time class="entry-date published updated">
                               		<fmt:formatDate value="${sessionScope.Article.date}" pattern="yyyy年MM月dd日"/>
                               	</time>
                               </a></span>
                               <span class="byline"><span class="author vcard">
                               <i class="fa fa-user"> </i>
                               <a class="url fn n" href=" ">${sessionScope.Article.users.realName }</a></span>
                       </span>
					</footer><!-- .entry-footer -->

			</article><!-- #post-## -->

<div id="comments" class="comments-area">

			<h2 class="comments-title">
			《${sessionScope.Article.title }》有1个想法</h2>
	<ol class="comment-list">
		<c:forEach var="item" items="${sessionScope.COMMENT_LIST }">
			<li id="comment-1" class="comment even thread-even depth-1">
				<article id="div-comment-1" class="comment-body">
					<footer class="comment-meta">
						<div class="comment-author vcard">
							<img src="images/system/none.png" class='avatar avatar-56 photo avatar-default' height='56' width='56' />
	                        <b class="fn"><a href='' rel='external nofollow' class='url'>${item.users.realName }</a>
	                        </b>
	          			</div><!-- .comment-author -->
						<div class="comment-metadata">
							<a href="">
								<time datetime="2016-03-28T22:31:05+00:00">
									<fmt:formatDate value="${item.date}" pattern="yyyy年MM月dd日"/>
	                            </time>
							</a>
						</div><!-- .comment-metadata -->
						
					</footer><!-- .comment-meta -->
					<div class="comment-content">
						<p>${item.content }</p>
					</div><!-- .comment-content -->
				</article><!-- .comment-body -->
			</li><!-- #comment-## -->
		</c:forEach>
	</ol><!-- .comment-list -->
	
    <div id="respond" class="comment-respond">
		<h3 id="reply-title" class="comment-reply-title">发表评论 <small><a rel="nofollow" id="cancel-comment-reply-link" href="" style="display:none;">取消回复</a></small></h3>
        <form action="comment.do" method="post" id="commentform" class="comment-form" novalidate>
			<p class="comment-form-comment">
            	<label for="comment">评论</label> 
            	<textarea id="comment" name="item.content" cols="45" rows="8"  aria-required="true" required></textarea>
            </p>
            <c:if test="${sessionScope.USER != null}">
            	<p class="form-submit">
		            <input name="submit" type="submit" id="submit" class="submit" value="发表评论" /> 
		            <input type='hidden' name='operate' id='' value='doAddComment' />
	        	</p>
            </c:if>
            <c:if test="${sessionScope.USER eq null}">
				<p class="form-submit">
		            <input name="submit" type="button" id="submit" class="submit" value="请登录" onclick="login()"/> 
	        	</p>
            </c:if>
		</form>
	</div><!-- #respond -->
		
</div><!-- .comments-area -->

		</main><!-- .site-main -->
	</div><!-- .content-area -->


	</div><!-- .site-content -->
</div><!-- .site -->

</body>
</html>
