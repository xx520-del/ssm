<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>修改密码</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/css/css.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/js/jquery.min.js"></script>
</head>
<body>
	<div id="pageAll">
		<div class="pageTop">
			<div class="page">
				<img src="${pageContext.request.contextPath}/js/img/coin02.png" /><span><a href="#">首页</a>&nbsp;-&nbsp;<a
					href="#">公共管理</a>&nbsp;-</span>&nbsp;修改密码
			</div>
		</div>
		<div class="page ">
			<!-- 修改密码页面样式 -->
			<div class="bacen">
				<div class="bbD">
					&nbsp;&nbsp;&nbsp;&nbsp;管理员UID：&nbsp;&nbsp;&nbsp;&nbsp;${user.id }</div>
				<div class="bbD">管理员用户名：&nbsp;&nbsp;&nbsp;&nbsp;${user.username }</div>
				<form action="">
				<div class="bbD">
					&nbsp;&nbsp;&nbsp;&nbsp;输入旧密码：<input type="password" class="input3"
						onblur="checkpwd1()" id="pwd1" /> <img class="imga"
						src="${pageContext.request.contextPath}/js/img/ok.png" /><img class="imgb" src="${pageContext.request.contextPath}/js/img/no.png" />
				</div>
				<div class="bbD">
					&nbsp;&nbsp;&nbsp;&nbsp;输入新密码：<input type="password" class="input3"
						onblur="checkpwd2()" id="pwd2" /> <img class="imga"
						src="${pageContext.request.contextPath}/js/img/ok.png" /><img class="imgb" src="${pageContext.request.contextPath}/js/img/no.png" />
				</div>
				<div class="bbD">
					再次确认密码：<input type="password" class="input3" onblur="checkpwd3()"
						id="pwd3" /> <img class="imga" src="${pageContext.request.contextPath}/js/img/ok.png" /><img
						class="imgb" src="${pageContext.request.contextPath}/js/img/no.png" />
				</div>
				<div class="bbD">
					<p class="bbDP">
						<button type="submit" class="btn_ok btn_yes"  >提交</button>
						<a class="btn_ok btn_no" href="#">取消</a>
					</p>
				</div>
				</form>
			</div>

			<!-- 修改密码页面样式end -->
		</div>
	</div>
</body>
<script type="text/javascript">
function checkpwd1(){
var user = document.getElementById('pwd1').value.trim();
 if (user==${user.password}) {
	 
  $("#pwd1").parent().find(".imga").show();
  $("#pwd1").parent().find(".imgb").hide();
 }else{
	 alert("旧密码输入不正确，请重新输入！")
  $("#pwd1").parent().find(".imgb").show();
  $("#pwd1").parent().find(".imga").hide();
 };
}
function checkpwd2(){
var user = document.getElementById('pwd2').value.trim();
 if (user!=${user.password}) {
  $("#pwd2").parent().find(".imga").show();
  $("#pwd2").parent().find(".imgb").hide();
 }else{
	 alert("输入的密码和旧密码相同，请重新输入！")
  $("#pwd2").parent().find(".imgb").show();
  $("#pwd2").parent().find(".imga").hide();
 };
}
function checkpwd3(){
var user = document.getElementById('pwd3').value.trim();
var pwd = document.getElementById('pwd2').value.trim();
 if (user == pwd) {
  $("#pwd3").parent().find(".imga").show();
  $("#pwd3").parent().find(".imgb").hide();
 }else{
   $("#pwd3").parent().find(".imgb").show();
  $("#pwd3").parent().find(".imga").hide();
 };
}
</script>
</html>