<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/js/login/css/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/js/login/css/style.css">
<link rel="icon" href="${pageContext.request.contextPath}/js/img/1.jpg" type="image/x-icon"><!--在网页标题栏左侧显示图标-->
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/js/img/1.jpg" type="image/x-icon"><!--在收藏夹显示图标-->
<title>湖北二师网上学堂</title>
<script src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js" type="text/javascript"></script>

<script type="text/javascript">
function befo_registe(){
	var myReg = /^[-_A-Za-z0-9]+@([_A-Za-z0-9]+\.)+[A-Za-z0-9]{2,3}$/;
	var email=registeForm.username.value;
	if(myReg.test(email)){
	return true;
	}else{
		alert("请在用户名处输入正确合法的邮箱地址,如:wx-1999@qq.com")
		registeForm.username.focus();
		return false;
	}
	return true;
}
function doLogin(){
	var myReg = /^[-_A-Za-z0-9]+@([_A-Za-z0-9]+\.)+[A-Za-z0-9]{2,3}$/;
	var email=loginForm.username.value;
	if(myReg.test(email)){
		
	}else{
		alert("请在用户名处输入正确邮箱地址,如:wx-1999@qq.com")
		return "${pageContext.request.contextPath}/user/login";
	}
	
	$.ajax({
		type : "post",
		url : "${pageContext.request.contextPath}/user/doLogin",
		data:{"username":$("#username").val(),"password":$("#password").val(),"type":$("#type").val()},
		dataType : "json",
		success : function(result) {
			if(result!=null&&result.length>0&&($("#type").val()==3)){
				window.location.href="${pageContext.request.contextPath}/student/index_stu";
			}else if(result!=null&&result.length>0&&($("#type").val()==2)){
				window.location.href="${pageContext.request.contextPath}/teacher/index_tea";

			}else if(result!=null&&result.length>0&&($("#type").val()==1)){
				window.location.href="${pageContext.request.contextPath}/manager/index";

			}
			else{
				alert("登录失败!请重新登录");
			}
		},
		error : function(result) {

		}
	});
} 
function jump(){
	window.location.href="${pageContext.request.contextPath}/user/register";
}
</script>
<script src="${pageContext.request.contextPath}/js/login/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/login/js/index.js"></script>
</head>

<body>
<img alt="" src="${pageContext.request.contextPath}/js/img/1.jpg" href="${pageContext.request.contextPath}/student/index" style="width:150px;height:150px;border-radius:50%;"/>
<div class="materialContainer">
	<div class="box">
		<div class="title" ><a href="${pageContext.request.contextPath}/student/index">登录(返回首页)</a></div>
		
		<form id="loginForm" action="" method="post">
		<div class="input">
			<label for="username">用户名</label>
			<input type="email" name="username" id="username">
			<span class="spin"></span>
		</div>
		<div class="input">
			<label for="password">密码</label>
			<input type="text" name="password" id="password">
			<span class="spin"></span>
		</div>
		<select id="type" name="type" class="input" style="border-radius:2em;">
		<!-- 			<option value="0">请选择身份类型</option> -->
					<option value="3">学生</option>
					<option value="2">教师</option>
					<option value="1">管理员</option>
									</select>
		<div class="button login">
			<button type="button" name="btnTj" value="登录" onclick="doLogin();">
				<span>登录</span>
				<i class="fa fa-check"></i>
			</button>
			<!-- <input type="button" name="btnTj" value="登录" onclick="doLogin();"> -->
		</div>
		</form>
		<a href="javascript:" class="pass-forgot">忘记密码？</a>
	</div>


	<div class="overbox">
		<div class="material-button alt-2">
			<span class="shape"></span>
		</div>
		<div class="title">注册</div>
		<form id="registeForm" action="${pageContext.request.contextPath}/user/send" method="post">
		<div class="input">
			<label for="regname">用户名</label>
			<input type="text" name="username" id="regname"required="required">
			<span class="spin"></span>
		</div>
		<div class="input">
			<label for="regpass">密码</label>
			<input type="text" name="password" id="regpass"required="required">
			<span class="spin"></span>
		</div>

		<div class="input">
			<label for="reregpass">验证码(点击获取验证码)</label>
			<input type="password" readonly="readonly" id="reregpass">
			<span class="spin"></span>
		 <input type="submit" name="btnTj" value="获取验证码" onclick="befo_registe()">
		</div>
		</form>
	
	</div>

</div>




</body>








<!-- <body>

	<form id="inputForm" action="" method="post"> 
		<table align="center" border="1">
		<caption>用户登录</caption>
			<tr>
				<td>登录名</td><td><input type="text" id="username" name="username"/></td>
			</tr>
			<tr>
				<td>密码</td><td><input type="text" id="password" name="password"/></td>
			</tr>
			<tr>
				<td>用户类型</td>
				<td><select id="type" name="type">
					<option value="0">请选择身份类型</option>
					<option value="3">学生</option>
					<option value="2">教师</option>
					<option value="1">管理员</option>
									</select></td>
			</tr>

			<tr>
				<td colspan="2" align="center"><input type="button" name="btnTj" value="登录" onclick="doLogin();">
				<input type="button" name="register" value ="注册" onclick="jump()"/>
				</td>
				
				
			</tr>
		</table>
	</form>	
	
</body> -->
</html>