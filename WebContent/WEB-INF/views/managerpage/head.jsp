<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>头部</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/css/public.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/js/public.js"></script>
</head>

<body>
	<!-- 头部 -->
	<div class="head">
		<div class="headL">
			<img class="headLogo" src="${pageContext.request.contextPath}/js/img/xiaohui.jpg"/>
		</div>
		<div class="headR">
		<p style="front-size:24px" align="center">网校管理平台</p>
			<span style="color:#FFF;top:30%;">欢迎：${user.username }</span> 
			 
			
			<a href="${pageContext.request.contextPath}/user/loginout" rel="external" target="_top">【退出】</a>
		</div>
	</div>
</body>
</html>