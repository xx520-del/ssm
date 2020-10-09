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
<script type="text/javascript">
function{
$.ajax({
    url: "${pageContext.request.contextPath}/teacher/all_teacher", //提价的路径
    type: "post",       //提交方式
    data: {"wpage":$("topage").val()}
    dataType: "JSON",       //规定请求成功后返回的数据
    success: function (data) {
        //请求成功之后进入该方法，data为成功后返回的数据
    },
    error: function (errorMsg) {
        //请求失败之后进入该方法，errorMsg为失败后返回的错误信息
    }
});
}</script>
<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
<![endif]-->
</head>

<body>


<!-- MainForm -->
<div id="MainForm">
<div class="form_boxA">
<!-- <h2>信息展示<a href="http://localhost:8080/ssm/teacher/all_teacher?i=1">刷新</a></h2> -->
<table cellpadding="0" cellspacing="0">
<thead>
<tr>
<th width="10%">工号</th>
<th width="10%">姓名</th>
<th width="10%">性别</th>
<th width="10%">联系方式</th>
<th width="20%">修改日期</th>
<th width="20%">教师简介</th>
<th width="20%">登陆日期</th>
</tr>
</thead>
<tbody>

<c:forEach items="${teachers1}" var="teachers1">
<tr>
<td>${teachers1.depid }</td>
<td>${teachers1.name }</td>
<td>${teachers1.sex>0?'男':'女' }</td>
<td>${teacehrs1.phone}</td>
<td>${teachers1.cdate}</td>
<td>${teachers1.tip}</td>
<td>${teachers1.logintime}</td>
</tr>

</c:forEach>
</tbody>

</table>
<!-- PageNum -->
<ul id="PageNum">
<li><a href="${pageContext.request.contextPath}/teacher/all_teacher?i=1">首页</a></li>
<li><a href="${pageContext.request.contextPath}/teacher/all_teacher?i=${j-1>0?j-1:1}">上一页</a></li>
<li><a href="${pageContext.request.contextPath}/teacher/all_teacher?i=1">1</a></li>
<li><a href="${pageContext.request.contextPath}/teacher/all_teacher?i=${pagenum+1>2?2:pagenum+1}">2</a></li>
<li><a href="${pageContext.request.contextPath}/teacher/all_teacher?i=${pagenum+1>3?3:pagenum+1}">3</a></li>
<li><a href="${pageContext.request.contextPath}/teacher/all_teacher?i=${pagenum+1>4?4:pagenum+1}">4</a></li>
<li><a href="${pageContext.request.contextPath}/teacher/all_teacher?i=${pagenum+1>5?5:pagenum+1}">5</a></li>
<li><a href="${pageContext.request.contextPath}/teacher/all_teacher?i=${pagenum+1>6?6:pagenum+1}">6</a></li>
<li><a href="${pageContext.request.contextPath}/teacher/all_teacher?i=${j+1<pagenum+1?j+1:pagenum+1}">下一页</a></li>
<li><a href="${pageContext.request.contextPath}/teacher/all_teacher?i=${pagenum+1}">尾页</a></li>
</ul>
<p class="msg">每页10行数据，共${pagenum+1 }页，当前显示第 ${j }页</p>
</div>
</div>
<!-- /MainForm -->

</body>
</html>