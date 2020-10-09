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
<form action="${pageContext.request.contextPath}/user/updatesure" method="post">
<table cellpadding="0" cellspacing="0">
<tr>
<th width="10%">主ID</th>
<th width="20%">账户</th>
<th width="20%">密码</th>
<th width="20%">类型</th>
<th width="15%">修改</th>
<th width="15%">删除</th>

</tr>
<tr>

<td><input type="text" name="id" value="${id}" readonly="readonly"></td>

<td><input type="text" name="username" value="${username}" ></td>

<td><input type="text" name="password" value="${password }"></td>

<%-- <td>${updateuser.type>2?'学生':updateuser.type>1?'老师':'管理员' }</td> --%>
<td><input type="submit" name="btnTj" value="确定修改"></td>

</tr>

</table>
</form>

</div>
</div>
<!-- /MainForm -->

</body>
</html>