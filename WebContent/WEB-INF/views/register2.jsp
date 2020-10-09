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
function foryzm(){
	var yzm=zhuce.yzm.value;
	var type=zhuce.type.value;
	if(yzm!=${user.yzm}){
		alert("验证码错误!请重新注册");
		return false;
		
	}
	else{
		alert("注册成功，请登录！");
		return "${pageContext.request.contextPath}/user/login";
	}
}
function jump(){
	window.location.href="${pageContext.request.contextPath}/user/register";
}
</script>
<script src="http://localhost:8080/w/login/js/jquery.min.js"></script>
<script src="http://localhost:8080/w/login/js/index.js"></script>
</head>

<body>
<img alt="" src="http://localhost:8080/w/wx/2020-09-29/1.jpg" style="width:150px;height:150px;border-radius:50%;"/>
<div class="materialContainer">

	<div class="box">
		<div class="title">注册${user.yzm}</div>
		
		<form id="zhuceid" name="zhuce" action="${pageContext.request.contextPath}/user/doRegister" method="post">
		<div class="input">
		
			<input type="text" name="username" required="required" readonly="readonly"value="${user.username}" id="username">
			<span class="spin"></span>
		</div>
		<div class="input">
			
			<input type="text" name="password" required="required" readonly="readonly"value="${user.password}" id="password">
			<span class="spin"></span>
		</div>
		<div class="input">
			<label for="yzm">请输入验证码</label>
			<input type="text" name="yzm" required="required"  id="yzm">
			<span class="spin"></span>
		</div>
		<select id="type" name="type">
				<!-- 	<option value="0">请选择身份类型</option> -->
					<option value="3">学生</option>
					<option value="2">教师</option>
									</select>
		<div class="button login">
			<button type="submit" name="btnTj" value="提交" onclick="foryzm()">
				<span>注册</span>
				<i class="fa fa-check"></i>
			</button>
			<!-- <input type="button" name="btnTj" value="登录" onclick="doLogin();"> -->
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

























<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册</title>

<script type="text/javascript">
function foryzm(){
	var yzm=zhuce.yzm.value;
	if(yzm!="${user.yzm}"){
		alert("验证码错误!");
		return "${pageContext.request.contextPath}/user/doRegister";
	}
	else{
		return "${pageContext.request.contextPath}/user/doLogin";
	}
}
	
</script>
</head>
<body>

	<form name="zhuce" action="${pageContext.request.contextPath}/user/doRegister" method="post"> 
	
		用户名：<input type="text" name="username" required="required" value="${user.username}"/><br>
		密码：<input type="text" name="password" required="required" value="${user.password}"/><br>
		用户类型：<select id="type" name="type">
					<option value="3">学生</option>
					<option value="2">教师</option>
									</select>
		验证码：<input type="text" name="yzm">		
		<input type="submit" name="btnTj" value="提交" onclick="foryzm()">
		</form>

</body>
</html> --%>