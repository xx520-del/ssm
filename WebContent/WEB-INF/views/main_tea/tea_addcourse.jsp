
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!--[if lt IE 7]>      <html class="lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html>
<!--<![endif]-->

<!-- Mirrored from www.okeclass.com/online_front/ by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 26 Sep 2020 07:46:14 GMT -->
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
<link href="${pageContext.request.contextPath}/js/css/haiersoft.css" rel="stylesheet" type="text/css" media="screen,print" />
<link href="${pageContext.request.contextPath}/js/css/print.css" rel="stylesheet" type="text/css"  media="print" />
 <link rel="icon" href="${pageContext.request.contextPath}/js/img/1.jpg" type="image/x-icon"><!--在网页标题栏左侧显示图标-->
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/js/img/1.jpg" type="image/x-icon"><!--在收藏夹显示图标-->
<link rel="stylesheet" type="text/css" href="css/style.css">
    <style>
        *{
            margin: 0;
            padding: 0;
        }
    </style>
    
<link rel="stylesheet" href="${pageContext.request.contextPath}/js/stu/lunbotu/style.css" />

<script type="text/javascript">
 function imgPreview(fileDom){
        //判断是否支持FileReader

        if (window.FileReader) {
            var reader = new FileReader();
        } else {
            alert("您的设备不支持图片预览功能，如需该功能请升级您的设备！");
        }

        //获取文件
        var file = fileDom.files[0];
        var imageType = /^image\//;
        //是否是图片
        if (!imageType.test(file.type)) {
            alert("请选择图片！");
            return;
        }
        //读取完成


        reader.onload = function(e)
 {
            //获取图片dom
            var img = document.getElementById("preview");
            //图片路径设置为读取的图片
          img.src = e.target.result;

        };

        reader.readAsDataURL(file);

    }




function upload() {
        var xhr = new XMLHttpRequest();
        var progress = document.getElementById("progress")
        progress.style.display = "block";

        xhr.upload.addEventListener("progress", function(e) {
            if (e.lengthComputable) {
                var percentage = Math.round((e.loaded * 100) / e.total);
                progress.value = percentage;
            }
        }, false);

        xhr.upload.addEventListener("load", function(e){
              console.log("上传完毕...")
          }, false);

        xhr.open("POST", "upload");
        xhr.overrideMimeType('text/plain; charset=x-user-defined-binary');
        xhr.onreadystatechange = function() {
            if (xhr.readyState == 4 && xhr.status == 200) {
                alert(xhr.responseText); // handle response.
                progress.style.display = "none";
                progress.value = 0;
            }
        };
        var file = document.getElementById("imgFile");
        var fd = new FormData();
        fd.append(file.files[0].name, file.files[0]);
        xhr.send(fd);
    }

</script>
  
</head>

<body class="W-body" onload="start()">
  <script>
  function myfun(){ 　　 
      alert("登录已过期！请重新登录");
      window.location.href="${pageContext.request.contextPath}/student/index";　　
  } 　　
  if（${user.username }==null){
  window.onload = myfun;
  }
  </script>
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
			<a href="${pageContext.request.contextPath}/teacher/main_tea_course?i=1&userid=${user.id}"><img src="${pageContext.request.contextPath}/js/stu/stu/tp/logo.gif" width="100%"></a>
		</h1>
		<div class="h-r-nsl">
			<ul class="nav">
				<li><a href="${pageContext.request.contextPath}/teacher/main_tea_course?i=1&userid=${user.id}" title="首页">首页</a></li>
	
			</ul>
			<!-- / nav -->
			<ul class="h-r-login">
				
			<div id="headright">
	                    <div class="headimg">
	                        <img src="${pageContext.request.contextPath}/js/img/1.jpg" alt="" style="border-radius: 50%;width:50px;height:50px;">
	                    </div>
               		    <div class="headname">${teacher.name}老师</div>
               		          <div id="exit" style="">
	                    <ul>
	                       <li><a href="${pageContext.request.contextPath}/student/person_stu" >个人中心</a></li><!-- target="_blank" -->
	                        <li><a href="${pageContext.request.contextPath}/user/loginout">退出</a></li>
	                    </ul>
	                </div>
	                </div>
	          
				
				
				<!-- /未登录显示第1 li；登录后显示第2 li -->
			</ul>
		
		</div>
		<aside class="mw-nav-btn">
			<div class="mw-nav-icon"></div>
		</aside>
		<div class="clear"></div>
	</section>
</header>

   
   
   
  <div id="aCoursesList"> 
    <!-- /为你推荐 开始 -->
    <div class="bg-fa of">
      <section class="container">
	  	<!--导航栏目-->

        <header class="comm-title"> 
          <h2 class="fl tac"> <span class="c-333"><a href="${pageContext.request.contextPath}/teacher/main_tea_course?i=1&userid=${user.id}">我的课程</a></span> </h2>
        </header>

           
        <article class="comm-course-list">
          <ul class="of" id="weinituijian">
			 <c:forEach items="${main_tea_courses}" var="main_tea_courses">
            <li>
              <div class="cc-l-wrap">
                <section class="course-img"><a href="${pageContext.request.contextPath}/course/coursexq_stu?id=${main_tea_courses.id}"><img src="${main_tea_courses.img }" class="img-responsive" alt="${main_tea_courses.name}"></a>
                  <div class="cc-mask"> <a href="${pageContext.request.contextPath}/course/coursexq_stu?id=${main_tea_courses.id}" title="开始学习" class="comm-btn c-btn-1">开始学习</a> </div>
                </section>
                <h3 class="hLh30 txtOf mt10"> <a href="${pageContext.request.contextPath}/course/coursexq_stu?id=${main_tea_courses.id}" title="${main_tea_courses.name }" class="course-title fsize18 c-333">${main_tea_courses.name}</a></h3>
                <section class="hLh20 of">
                	
                	    <span class="fr jgTag  c-green">
	                		<tt class="fsize13" style="font-size: .88rem;">
	                		${main_tea_courses.price}
	                		</tt>
                		</span> 
                	
					
	                <span class="fl jgAttr c-ccc fmy">
	                	<tt class="c-999 fsize13 fmy rem6">
	                	课时数：
		                	${main_tea_courses.number }
	                	</tt>
	                </span>
                </section>
              </div>
            </li>
              </c:forEach>
          
            
           
            
          </ul>
          <div class="clear"></div>
        </article>
      
      </section>
    </div>
    
    
    
    
    
      
    <!-- /为你推荐 结束 --> 
    <!-- /网校名师 开始 -->
    <div>
      <section class="container">
        <header class="comm-title marginTop">
          <h2 class="fl tac"> <span class="c-333">课程详情</span> </h2>
        </header>
       <div id="MainForm">
<div class="form_boxB">
      
<form action="${pageContext.request.contextPath}/course/addcourse?teacher=${teacher.name}" method="post"enctype="multipart/form-data">
        
<table cellpadding="0" cellspacing="0" style='background-color:#AEBBB3'>
<thead>
<tr>

<th width="5%">课程名称</th>
<th width="5%">课程类型</th>
<th width="5%">课时数</th>
<th width="5%">课程价格</th>

<th width="10%">课程封面</th>
<th width="10%">课程资料</th>

<th width="30%">课程介绍</th>

</tr>
</thead>
<tbody>
<tr>
<td><input style="width:100px;height:50px" type="text" name="name"required="required"></td>
<td ><input style="width:100px;height:50px" type="text" name="type"required="required"></td>
<td ><input style="width:50px;height:50px" type="text" name="number"required="required"></td>
<td class="f_cA"><input type="text"style="width:50px;height:100px" name="price"required="required"></td>
<td>
<input type="file" name="imgFile" onchange="imgPreview(this)" required="required">
 <img id="preview"  title="点击更换图片" style="z-index: 9; width: 100px; height: 100px"> 
</td>
<td>
<input type="file" name="courseFile"required="required" >
（可添加视频mp4、pdf、word等课程资料）
</td>
<td class="f_cA"><input type="text" name="tip" style="width:100px;height:100px" required="required"></td>

</tr>
</tbody>

</table>

<div class="clear"></div>
     
          <section class="tac pt20"> 
        
        <input type="submit" value="确认发布" class="comm-btn c-btn-2" >
           </section>

</form>
</body>
</html>