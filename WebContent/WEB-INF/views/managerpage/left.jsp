<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>首页左侧导航</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/css/public.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/js/public.js"></script>
<head></head>

<body id="bg">
	<!-- 左边节点 -->
	<div class="container">

		<div class="leftsidebar_box">
			<a href="show" target="main"><div class="line">
					<img src="${pageContext.request.contextPath}/js/img/coin01.png" />&nbsp;&nbsp;首页
				</div></a>
			
            <dl class="system_log">
				<dt>
					<img class="icon1" src="${pageContext.request.contextPath}/js/img/coin03.png" /><img class="icon2"
						src="${pageContext.request.contextPath}/js/img/coin04.png" /> 展示页面 <img class="icon3"
						src="${pageContext.request.contextPath}/js/img/coin19.png" /><img class="icon4"
						src="${pageContext.request.contextPath}/js/img/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="${pageContext.request.contextPath}/js/img/coin111.png" /><img class="coin22"
						src="${pageContext.request.contextPath}/js/img/coin222.png" /><a class="cks" href="${pageContext.request.contextPath}/student/manager_all_stu?i=1"
						target="main"> 学生信息展示 </a><img class="icon5" src="${pageContext.request.contextPath}/js/img/coin21.png" />
				</dd>
                <dd>
					<img class="coin11" src="${pageContext.request.contextPath}/js/img/coin111.png" /><img class="coin22"
						src="${pageContext.request.contextPath}/js/img/coin222.png" /><a class="cks" href="http://localhost:8080/ssm/teacher/all_teacher?i=1"
						target="main"> 教师信息展示 </a><img class="icon5" src="${pageContext.request.contextPath}/js/img/coin21.png" />
				</dd>
                <dd>
					<img class="coin11" src="${pageContext.request.contextPath}/js/img/coin111.png" /><img class="coin22"
						src="${pageContext.request.contextPath}/js/img/coin222.png" /><a class="cks" href="${pageContext.request.contextPath}/course/manager_allcourse?i=1"
						target="main"> 课程信息展示 </a><img class="icon5" src="${pageContext.request.contextPath}/js/img/coin21.png" />
				</dd>
			</dl>
            
            
			<dl class="system_log">
				<dt>
					<img class="icon1" src="${pageContext.request.contextPath}/js/img/coin01.png" /><img class="icon2"
						src="${pageContext.request.contextPath}/js/img/coin02.png" />账号管理<img class="icon3"
						src="${pageContext.request.contextPath}/js/img/coin19.png" /><img class="icon4"
						src="${pageContext.request.contextPath}/js/img/coin20.png" />
				</dt>

				<dd>
					<img class="coin11" src="${pageContext.request.contextPath}/js/img/coin111.png" /><img class="coin22"
						src="${pageContext.request.contextPath}/js/img/coin222.png" /><a class="cks" href="${pageContext.request.contextPath}/user/manager_alluser?i=1"
						target="main">学生/老师账号</a><img class="icon5" src="${pageContext.request.contextPath}/js/img/coin21.png" />
				</dd>
			</dl>
            
			<dl class="system_log">
				<dt>
					<img class="icon1" src="${pageContext.request.contextPath}/js/img/coin07.png" /><img class="icon2"
						src="${pageContext.request.contextPath}/js/img/coin08.png" /> 学生管理 <img class="icon3"
						src="${pageContext.request.contextPath}/js/img/coin19.png" /><img class="icon4"
						src="${pageContext.request.contextPath}/js/img/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="${pageContext.request.contextPath}/js/img/coin111.png" /><img class="coin22"
						src="${pageContext.request.contextPath}/js/img/coin222.png" /><a href="student.html" target="main"
						class="cks"> 学生管理 </a><img class="icon5" src="${pageContext.request.contextPath}/js/img/coin21.png" />
				</dd>
			</dl>
			
            <dl class="system_log">
				<dt>
					<img class="icon1" src="${pageContext.request.contextPath}/js/img/coin10.png" /><img class="icon2"
						src="${pageContext.request.contextPath}/js/img/coin09.png" /> 教师管理 <img class="icon3"
						src="${pageContext.request.contextPath}/js/img/coin19.png" /><img class="icon4"
						src="${pageContext.request.contextPath}/js/img/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="${pageContext.request.contextPath}/js/img/coin111.png" /><img class="coin22"
						src="${pageContext.request.contextPath}/js/img/coin222.png" /><a href="teacher.html"target="main" 
                        class="cks"> 教师管理 </a><img class="icon5"
						src="${pageContext.request.contextPath}/js/img/coin21.png" />
				</dd>
			</dl>
			
            <dl class="system_log">
				<dt>
					<img class="icon1" src="${pageContext.request.contextPath}/js/img/coin11.png" /><img class="icon2"
						src="${pageContext.request.contextPath}/js/img/coin12.png" /> 课程管理 <img class="icon3"
						src="${pageContext.request.contextPath}/js/img/coin19.png" /><img class="icon4"
						src="${pageContext.request.contextPath}/js/img/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="${pageContext.request.contextPath}/js/img/coin111.png" /><img class="coin22"
						src="${pageContext.request.contextPath}/js/img/coin222.png" /><a href="course.html"target="main" 
                        class="cks"> 课程管理 </a><img class="icon5" src="${pageContext.request.contextPath}/js/img/coin21.png" />
				</dd>
			</dl>
			
			<dl class="system_log">
				<dt>
					<img class="icon1" src="${pageContext.request.contextPath}/js/img/coinL1.png" /><img class="icon2"
						src="${pageContext.request.contextPath}/js/img/coinL2.png" /> 系统管理<img class="icon3"
						src="${pageContext.request.contextPath}/js/img/coin19.png" /><img class="icon4"
						src="${pageContext.request.contextPath}/js/img/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="${pageContext.request.contextPath}/js/img/coin111.png" /><img class="coin22"
						src="${pageContext.request.contextPath}/js/img/coin222.png" /><a href="changepwd.html"
						target="main" class="cks">修改密码</a><img class="icon5"
						src="${pageContext.request.contextPath}/js/img/coin21.png" />
				</dd>
				<dd>
					<img class="coin11" src="${pageContext.request.contextPath}/js/img/coin111.png" /><img class="coin22"
						src="${pageContext.request.contextPath}/js/img/coin222.png" /><a class="cks">退出</a><img
						class="icon5" src="${pageContext.request.contextPath}/js/img/coin21.png" />
				</dd>
			</dl>

		</div>

	</div>
</body>
</html>
