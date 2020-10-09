<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<html>

<!--<![endif]-->


<!-- Mirrored from www.okeclass.com/online_front/help by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 26 Sep 2020 07:47:22 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0,user-scalable=no,minimal-ui">
<title>湖北二师网上课堂</title>
<meta name="author" content="" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
<meta content="telephone=no" name="format-detection" />
 <link rel="icon" href="${pageContext.request.contextPath}/js/img/1.jpg" type="image/x-icon"><!--在网页标题栏左侧显示图标-->
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/js/img/1.jpg" type="image/x-icon"><!--在收藏夹显示图标-->
</head>

<body class="W-body">
<div class="in-wrap" > 




<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/stu/stu/css/person.css?v1.0">


<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/stu/stu/css/reset.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/stu/stu/css/theme.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/stu/stu/css/global.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/stu/stu/css/web.css">
<link href="${pageContext.request.contextPath}/js/stu/stu/css/mw_320_768.css" rel="stylesheet" type="text/css" media="screen and (min-width: 320px) and (max-width: 768px)">
<!--[if lt IE 9]><script src="http://47.103.69.89:8080/inxedu/static/common/html5.js"></script><![endif]-->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/stu/stu/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/stu/stu/js/webutils.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/stu/stu/js/header.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/stu/stu/js/common.js"></script>
<style>
#exit{
    position: absolute;
    top: 25px;
    right: 0px;
    width: 90px;
    height:75px;
    background: #fff;
    border-radius: 6px;
    z-index:5;
}
#exit ul{}
#exit ul li{
    height: 30px;
    line-height: 30px;
    text-align: center;
}
#exit ul li a{
    display: inline-block;

    width: 100%;
    height: 100%;
}
#headright{
    float: right;
    margin-top: 9px;
    cursor: pointer;
    height: 52px;
}
#headright .headimg{
    float: left;
    width: 32px;
    height: 32px;
}

#headright img{
    width: 100%;
    /*float: left;*/
    vertical-align:middle;
    border-radius: 50%;
}

#headright .headname{
    float: left;
    color: #000;
    font-size: 1.5em;
    margin-left: 24px;
    margin-top: 3px;
}

</style>
<header id="header">
	<section class="container">
		<h1 id="logo">
			<a href="${pageContext.request.contextPath}/student/index_stu"><img src="${pageContext.request.contextPath}/js/stu/stu/tp/logo.gif" width="100%"></a>
		</h1>
		<div class="h-r-nsl">
			<ul class="nav">
				<li><a href="${pageContext.request.contextPath}/student/index_stu" title="首页">首页</a></li>
				<li><a href="${pageContext.request.contextPath}/course/getall_stu?i=1" title="课程">课程</a></li>
				<li><a href="${pageContext.request.contextPath}/teacher/getall_stu?i=1" title="名师">名师</a></li>
				<!-- <li><a href="#" title="通知">通知</a></li> -->
				<li><a href="${pageContext.request.contextPath}/student/help_stu" title="帮助">帮助</a></li>
			</ul>
			<!-- / nav -->
			<ul class="h-r-login">
				
			<div id="headright">
	                    <div class="headimg">
	                        <img src="${userStudent.iconurl }" alt="" style="border-radius: 50%;width:50px;height:50px;">
	                    </div>
               		    <div class="headname"></div>
               		          <div id="exit" style="">
	                    <ul>
	                       <li><a href="${pageContext.request.contextPath}/student/person_stu" >个人中心</a></li><!-- target="_blank" -->
	                        <li><a href="${pageContext.request.contextPath}/user/loginout">退出</a></li>
	                    </ul>
	                </div>
	                </div>
	          
				
				
				
				<!-- /未登录显示第1 li；登录后显示第2 li -->
			</ul>
			<aside class="h-r-search">
				<form action="${pageContext.request.contextPath}/course/selectcourse_stu?data='数学'" method="post">
					<label class="h-r-s-box"> <input type="text" placeholder="输入你想学的课程" name="name" >
						<button type="submit" class="s-btn">
							<em class="icon18">&nbsp;</em>
						</button>
					</label>
				</form>
			</aside>
		</div>
		<aside class="mw-nav-btn">
			<div class="mw-nav-icon"></div>
		</aside>
		<div class="clear"></div>
	</section>
</header>
<div id="aCoursesList" class="bg-fa of"> 
    <!-- /讲师列表 开始 -->
    
    <section class="container">
      <header class="comm-title">
        <h2 class="fl tac"> <span class="c-333">帮助</span> </h2>
      </header>
      <section class="c-sort-box">
        <p>
	&nbsp;</p>
<p>
	<span style="font-size:16px;">暂无信息</span></p>
      </section>
    </section>
    <!-- /讲师列表 结束 --> 
  </div>
  <!-- 公共底引入 -->





<link rel="stylesheet" type="text/css" href="css/reset.css">
<link rel="stylesheet" type="text/css" href="css/theme.css">
<link rel="stylesheet" type="text/css" href="css/global.css">
<link rel="stylesheet" type="text/css" href="css/web.css">
<link href="css/mw_320_768.css" rel="stylesheet" type="text/css" media="screen and (min-width: 320px) and (max-width: 768px)">

  <footer id="footer">
    <section class="container" style="height:200px;">
		<p style="text-align: center;">
	&nbsp;</p>
<p style="text-align: center;">
	<span style="font-size: 16px;">版权所有：南京市友师网络科技有限公司</span></p>
    </section>
  </footer>
  <footer id="footer2">
    <ul>
      <li>
        <a href="${pageContext.request.contextPath}/course/">
          <img class="icon11" src="img/footIcon1.png">
          <img class="icon22" src="img/footIconActive1.png">
          <span>首页</span>
        </a>
      </li>
      <li>

      	<a href="course.html">
          <img class="icon11" src="img/footIcon2.png">
          <img class="icon22" src="img/footIconActive2.png">
          <span>分类</span>
        </a>

      </li>
<!--<li>
      	
      	<a href="javascript:lrFun(1)">
          <img class="icon11" src="/online_front/img/footIcon3.png">
          <img class="icon22" src="/online_front/img/footIconActive3.png">
          <span>上课</span>
        </a>
      	
      	
      </li>
      <li>
      	
        <a href="javascript:lrFun(2)">
          <img class="icon11" src="/online_front/img/footIcon4.png">
          <img class="icon22" src="/online_front/img/footIconActive4.png">
          <span>记录</span>
        </a>
      	
      	
      </li>
       <li>
      	
        <a href="javascript:lrFun(3)">
          <img class="icon11" src="/online_front/img/footIcon5.png">
          <img class="icon22" src="/online_front/img/footIconActive5.png">
          <span>我的</span>
        </a>
      	
      	
      </li>-->
      <li>
      	
        <a href="javascript:lrFun(3)">
          <img class="icon11" src="img/footIcon5.png">
          <img class="icon22" src="img/footIconActive5.png">
          <span>我的</span>
        </a>
      	
      	
      </li>
    </ul>
  </footer>
  <!-- 公共底引入 -->   
</div>

<!-- 统计代码 -->

</body>

<!-- Mirrored from www.okeclass.com/online_front/help by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 26 Sep 2020 07:47:22 GMT -->
</html>
