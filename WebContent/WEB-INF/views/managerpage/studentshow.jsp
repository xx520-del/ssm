<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="generator" content="" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
<link href="${pageContext.request.contextPath}/js/css/haiersoft.css" rel="stylesheet" type="text/css" media="screen,print" />
<link href="${pageContext.request.contextPath}/js/css/print.css" rel="stylesheet" type="text/css"  media="print" />
<script src="${pageContext.request.contextPath}/js/js/jquery-1.10.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/js/side.js" type="text/javascript"></script>

<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
<![endif]-->
</head>

<body>


<!-- MainForm -->
<div id="MainForm">
<div class="form_boxA">
<h2>信息展示</h2>
<table cellpadding="0" cellspacing="0">
<tr>
<th width="10%">学号</th>
<th width="10%">姓名</th>
<th width="10%">性别</th>
<th width="15%">联系方式</th>
<th width="25%">修改日期</th>
<th width="30%">上次登录时间</th>
</tr>
<c:forEach items="${manager_students}" var="manager_students">

<tr>
<td>${manager_students.depid}</td>
<td>${manager_students.name}</td>
<td>${manager_students.sex>0?'男':'女'}</td>
<td>${manager_students.phone}</td>
<td>${manager_students.cdate}</td>
<td>${manager_students.logintime}</td>
</tr>
</c:forEach>
</table>
<!-- PageNum -->
<ul id="PageNum">
<li><a href="${pageContext.request.contextPath}/student/manager_all_stu?i=1">首页</a></li>
<li><a href="${pageContext.request.contextPath}/student/manager_all_stu?i=${j-1>0?j-1:1}">上一页</a></li>
<li><a href="${pageContext.request.contextPath}/student/manager_all_stu?i=1">1</a></li>
<li><a href="${pageContext.request.contextPath}/student/manager_all_stu?i=${pagenum+1>2?2:pagenum+1}">2</a></li>
<li><a href="${pageContext.request.contextPath}/student/manager_all_stu?i=${pagenum+1>3?3:pagenum+1}">3</a></li>
<li><a href="${pageContext.request.contextPath}/student/manager_all_stu?i=${pagenum+1>4?4:pagenum+1}">4</a></li>
<li><a href="${pageContext.request.contextPath}/student/manager_all_stu?i=${pagenum+1>5?5:pagenum+1}">5</a></li>
<li><a href="${pageContext.request.contextPath}/student/manager_all_stu?i=${pagenum+1>6?6:pagenum+1}">6</a></li>
<li><a href="${pageContext.request.contextPath}/student/manager_all_stu?i=${j+1<pagenum+1?j+1:pagenum+1}">下一页</a></li>
<li><a href="${pageContext.request.contextPath}/student/manager_all_stu?i=${pagenum+1}">尾页</a></li>
</ul>
<p class="msg">每页10行数据，共${pagenum+1 }页，当前显示第 ${j }页</p>
</div>
</div>
<!-- /MainForm -->

</body>
</html>