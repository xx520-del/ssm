<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <link rel="icon" href="${pageContext.request.contextPath}/js/img/1.jpg" type="image/x-icon"><!--在网页标题栏左侧显示图标-->
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/js/img/1.jpg" type="image/x-icon"><!--在收藏夹显示图标-->
<title>管理员首页</title>
</head>
<frameset rows="100,*" cols="*" scrolling="No" framespacing="0"
	frameborder="no" border="0"> <frame src="head"
	name="headmenu" id="mainFrame" title="mainFrame"><!-- 引用头部 -->
<!-- 引用左边和主体部分 --> <frameset rows="100*" cols="220,*" scrolling="No"
	framespacing="0" frameborder="no" border="0"> <frame
	src="left" name="leftmenu" id="mainFrame" title="mainFrame">
<frame src="show" name="main" scrolling="yes" noresize="noresize"
	id="rightFrame" title="rightFrame"></frameset></frameset>
</html>