
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
<link rel="icon" href="${pageContext.request.contextPath}/js/img/1.jpg" type="image/x-icon"><!--在网页标题栏左侧显示图标-->
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/js/img/1.jpg" type="image/x-icon"><!--在收藏夹显示图标-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/stu/stu/css/style.css">
    <style>
        *{
            margin: 0;
            padding: 0;
        }
    </style>
    
<link rel="stylesheet" href="${pageContext.request.contextPath}/js/stu/lunbotu/style.css" />
</head>

<body class="W-body">
<div class="in-wrap" >





<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/stu/stu/css/reset.css?v1.0">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/stu/stu/css/theme.css?v1.0">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/stu/stu/css/global.css?v1.0">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/stu/stu/css/web.css?v1.0.1">
<link href="${pageContext.request.contextPath}/js/stu/stu/css/mw_320_768.css?v1.0.0" rel="stylesheet" type="text/css" media="screen and (min-width: 320px) and (max-width: 768px)">
<!--[if lt IE 9]><script src="http://47.103.69.89:8080/inxedu/static/common/html5.js"></script><![endif]-->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/stu/stu/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/stu/stu/js/webutils.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/stu/stu/js/header.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/stu/stu/js/common.js"></script>

<header id="header">
	<section class="container">
		<h1 id="logo">
			<a href="${pageContext.request.contextPath}/student/index"><img src="${pageContext.request.contextPath}/js/stu/stu/tp/logo.gif" width="100%"></a>
		</h1>
		<div class="h-r-nsl">
			<ul class="nav">
				<li><a href="${pageContext.request.contextPath}/student/index" title="首页">首页</a></li>
				<li><a href="${pageContext.request.contextPath}/course/getall?i=1" title="课程">课程</a></li>
				<li><a href="${pageContext.request.contextPath}/teacher/getall?i=1" title="名师">名师</a></li>
				<!-- <li><a href="#" title="通知">通知</a></li> -->
				<li><a href="${pageContext.request.contextPath}/student/help" title="帮助">帮助</a></li>
			</ul>
			<!-- / nav -->
			<ul class="h-r-login">
				
				<li class="dis" id="no-login">
					<a href="${pageContext.request.contextPath}/user/login" title="学员登录">
						<span class="vam ml5">登录</span>
					</a>
					|
					<a href="${pageContext.request.contextPath}/user/login" title="老师登录">
						<span class="vam ml5">注册</span>
					</a>
				</li>
				
				
				<!-- /未登录显示第1 li；登录后显示第2 li -->
			</ul>
			<aside class="h-r-search">
				<form action="${pageContext.request.contextPath}/course/selectcourse" method="post">
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

   <div class="index-banner">
   
   
   
     <div class="c-banner">
	<div class="banner">
		<ul>
			<li><img src="${pageContext.request.contextPath}/js/stu/lunbotu/img/1.jpg"></li>
			<li><img src="${pageContext.request.contextPath}/js/stu/lunbotu/img/2.png"></li>
			<li><img src="${pageContext.request.contextPath}/js/stu/lunbotu/img/3.png"></li>
		</ul>
	</div>
	<div class="nexImg">
		<img src="${pageContext.request.contextPath}/js/stu/lunbotu/img/nexImg.png" />
	</div>
	<div class="preImg">
		<img src="${pageContext.request.contextPath}/js/stu/lunbotu/img/preImg.png" />
	</div>
	<div class="jumpBtn">
		<ul>
			<li jumpImg="0"></li>
			<li jumpImg="1"></li>
			<li jumpImg="2"></li>
		</ul>
	</div>
</div>
   </div>
   
   
   
  <div id="aCoursesList"> 
    <!-- /为你推荐 开始 -->
    <div class="bg-fa of">
      <section class="container">
	  	<!--导航栏目-->
		
        <header class="comm-title"> <span class="fr mt5"><a href="${pageContext.request.contextPath}/course/getall?i=1"  class="c-master" >全部课程</a></span>
          <h2 class="fl tac"> <span class="c-333">热门课程</span> </h2>
        </header>
        <article class="comm-course-list">
          <ul class="of" id="weinituijian">
			
           <c:forEach items="${hotcourses}" var="hotcourses">
            <li>
              <div class="cc-l-wrap">
                <section class="course-img"><a href="${pageContext.request.contextPath}/course/coursexq?id=${hotcourses.id}"><img src="${hotcourses.img }" class="img-responsive" alt="${hotcourses.name}"></a>
                  <div class="cc-mask"> <a href="${pageContext.request.contextPath}/course/coursexq?id=${hotcourses.id}" title="开始学习" class="comm-btn c-btn-1">开始学习</a> </div>
                </section>
                <h3 class="hLh30 txtOf mt10"> <a href="${pageContext.request.contextPath}/course/coursexq?id=${hotcourses.id}" title="${hotcourses.name }" class="course-title fsize18 c-333">${hotcourses.name}</a></h3>
                <section class="hLh20 of">
                	
                	    <span class="fr jgTag  c-green">
	                		<tt class="fsize13" style="font-size: .88rem;">
	                		${hotcourses.price}
	                		</tt>
                		</span> 
                	
					
	                <span class="fl jgAttr c-ccc fmy">
	                	<tt class="c-999 fsize13 fmy rem6">
	                	课时数：
		                	${hotcourses.number }
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
    
    
    <div class="bg-fa of">
      <section class="container">
	  	<!--导航栏目-->
		
        <header class="comm-title"> <span class="fr mt5"><a href="${pageContext.request.contextPath}/course/getall?i=1"  class="c-master" >全部课程</a></span>
          <h2 class="fl tac"> <span class="c-333">二师专属</span> </h2>
        </header>
        <article class="comm-course-list">
          <ul class="of" id="weinituijian">
		 <c:forEach items="${hotcourses}" var="hotcourses">
            <li>
              <div class="cc-l-wrap">
                <section class="course-img"><a href="${pageContext.request.contextPath}/course/coursexq?id=${hotcourses.id}"><img src="${hotcourses.img }" class="img-responsive" alt="${hotcourses.name}"></a>
                  <div class="cc-mask"> <a href="${pageContext.request.contextPath}/course/coursexq?id=${hotcourses.id}" title="开始学习" class="comm-btn c-btn-1">开始学习</a> </div>
                </section>
                <h3 class="hLh30 txtOf mt10"> <a href="${pageContext.request.contextPath}/course/coursexq?id=${hotcourses.id}" title="${hotcourses.name }" class="course-title fsize18 c-333">${hotcourses.name}</a></h3>
                <section class="hLh20 of">
                	
                	    <span class="fr jgTag  c-green">
	                		<tt class="fsize13" style="font-size: .88rem;">
	                		${hotcourses.price}
	                		</tt>
                		</span> 
                	
					
	                <span class="fl jgAttr c-ccc fmy">
	                	<tt class="c-999 fsize13 fmy rem6">
	                	课时数：
		                	${hotcourses.number }
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
          <h2 class="fl tac"> <span class="c-333">名师介绍</span> </h2>
        </header>
        <div>
          <article class="i-teacher-list">
            <ul class="of">
             <c:forEach items="${hotteachers}" var="hotteachers">
              <li>
                <section class="i-teach-wrap">
                  <div class="i-teach-pic"> <a href="${pageContext.request.contextPath}/student/index" title="唐江澎"> <img src="${hotteachers.iconurl }" alt="唐江澎"> </a> </div>
                  <div class="mt10 hLh30 txtOf tac"> <a href="${pageContext.request.contextPath}/student/index" title="唐江澎" class="fsize18 c-666">${hotteachers.name}</a> </div>
                  
                  <div class="mt15 i-q-txt">
                    <p class="c-999 f-fA">${hotteachers.tip}。</p>
                  </div>
                </section>
              </li>
			</c:forEach>
            
            </ul>
            <div class="clear"></div>
          </article>
          <section class="tac pt20"> <a href="${pageContext.request.contextPath}/teacher/getall?i=1" title="全部讲师" class="comm-btn c-btn-2">全部讲师</a> </section>
        </div>
      </section>
    </div>
    <!-- /网校名师 结束 --> 
  </div>
  <form action="${pageContext.request.contextPath}/student/index" id="searchForm" method="post">
  	<input type="hidden" id="ext1" name="ext1" value="" />
  </form>
  <form action="${pageContext.request.contextPath}/student/index" id="searchForm1" method="post">
	<input type="hidden" id="pageNo" name="pageNo" />
	<input type="hidden" id="ext2" name="ext2" />
  </form>
  <script type="text/javascript" src="js/swiper-2.1.0.js"></script> 
  <script type="text/javascript" src="js/index.js"></script> 
  <script type="text/javascript" src="js/jquery.edslider.js"></script> 
  <!--<script type="text/javascript" src="front/index_theme_color.js"></script>--><!-- 换肤 --> 
  <script>
		$(function() {
			sSwiperFun(); //幻灯片调取
			upSlideFun("#iQuestion"); //向上滚动互动
			scrollLoad(); //响应滚动加载课程图片
			$(".boutiqueCourse").click();//网校课程-精品课程
			var uri = window.location.search;
			var val = "msg";
			var re = new RegExp("" + val + "=([^&?]*)", "ig");
			var msg=((uri.match(re)) ? (uri.match(re)[0].substr(val.length + 1)) : null);
			if(msg!=null && msg!='' && msg=='LimitLogin'){
				dialog('提示信息',"您的帐号在其他地点登录，请重新登录",1);
			}
		});
		 function submitForm(type){
				$("#ext1").val(type);
				$("#searchForm").submit();
			}
		 function submitForm1(ext2){
			 	$("#ext2").val(ext2)
				$("#searchForm1").submit();
			}
		    $(function() {
		        $('.banner-inner').edslider({
		            width : '100%',
		            height:'100%'
		        });
		    });
		</script> 
		
<!-- 		
		
		
		轮播图的js
		 -->
		<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
//定时器返回值
var time=null;
//记录当前位子
var nexImg = 0;
//用于获取轮播图图片个数
var imgLength = $(".c-banner .banner ul li").length;
//当时动态数据的时候使用,上面那个删除
// var imgLength =0;
//设置底部第一个按钮样式
$(".c-banner .jumpBtn ul li[jumpImg="+nexImg+"]").css("background-color","black");

//页面加载
$(document).ready(function(){
	// dynamicData();
	//启动定时器,设置时间为3秒一次
	time =setInterval(intervalImg,3000);
});

//点击上一张
$(".preImg").click(function(){
	//清楚定时器
	clearInterval(time);
	var nowImg = nexImg;
	nexImg = nexImg-1;
	console.log(nexImg);
	if(nexImg<0){
		nexImg=imgLength-1;
	}
	//底部按钮样式设置
	$(".c-banner .jumpBtn ul li").css("background-color","white");
	$(".c-banner .jumpBtn ul li[jumpImg="+nexImg+"]").css("background-color","black");
	
	//将当前图片试用绝对定位,下一张图片试用相对定位
	$(".c-banner .banner ul img").eq(nowImg).css("position","absolute");
	$(".c-banner .banner ul img").eq(nexImg).css("position","relative");
	
	//轮播淡入淡出
	$(".c-banner .banner ul li").eq(nexImg).css("display","block");
	$(".c-banner .banner ul li").eq(nexImg).stop().animate({"opacity":1},1000);
	$(".c-banner .banner ul li").eq(nowImg).stop().animate({"opacity":0},1000,function(){
		$(".c-banner ul li").eq(nowImg).css("display","none");
	});
	
	//启动定时器,设置时间为3秒一次
	time =setInterval(intervalImg,3000);
})

//点击下一张
$(".nexImg").click(function(){
	clearInterval(time);
	intervalImg();
	time =setInterval(intervalImg,3000);
})

//轮播图
function intervalImg(){
	if(nexImg<imgLength-1){
		nexImg++;
	}else{
		nexImg=0;
	}
	
	//将当前图片试用绝对定位,下一张图片试用相对定位
	$(".c-banner .banner ul img").eq(nexImg-1).css("position","absolute");
	$(".c-banner .banner ul img").eq(nexImg).css("position","relative");
	
	$(".c-banner .banner ul li").eq(nexImg).css("display","block");
	$(".c-banner .banner ul li").eq(nexImg).stop().animate({"opacity":1},1000);
	$(".c-banner .banner ul li").eq(nexImg-1).stop().animate({"opacity":0},1000,function(){
		$(".c-banner .banner ul li").eq(nexImg-1).css("display","none");
	});
	$(".c-banner .jumpBtn ul li").css("background-color","white");
	$(".c-banner .jumpBtn ul li[jumpImg="+nexImg+"]").css("background-color","black");
}

//轮播图底下按钮
//动态数据加载的试用应放在请求成功后执行该代码,否则按钮无法使用
$(".c-banner .jumpBtn ul li").each(function(){
	//为每个按钮定义点击事件
	$(this).click(function(){
		clearInterval(time);
		$(".c-banner .jumpBtn ul li").css("background-color","white");
		jumpImg = $(this).attr("jumpImg");
		if(jumpImg!=nexImg){
			var after =$(".c-banner .banner ul li").eq(jumpImg);
			var befor =$(".c-banner .banner ul li").eq(nexImg);
			
			//将当前图片试用绝对定位,下一张图片试用相对定位
			$(".c-banner .banner ul img").eq(nexImg).css("position","absolute");
			$(".c-banner .banner ul img").eq(jumpImg).css("position","relative");
			
			after.css("display","block");
			after.stop().animate({"opacity":1},1000);
			befor.stop().animate({"opacity":0},1000,function(){
				befor.css("display","none");
			});
			nexImg=jumpImg;
		}
		$(this).css("background-color","black");
		time =setInterval(intervalImg,3000);
	});
});

	//动态数据轮播图
	//动态数据加载的时候不要直接点击demo.html运行否则可能请求不到本地json数据
// function dynamicData(){
// 	$.ajax({
// 		url:"js/test.json",
// 		type:"get",
// 		dataType:"json",
// 		success:function(data){
// 			if(data.code==1){
// 				var data = data.data;
// 				$.each(data,function(i){
// 					$(".c-banner .banner ul").append('<li><img src="'+this.img+'"></li>');
// 					$(".c-banner .jumpBtn ul").append('<li jumpImg="'+i+'"></li>')
// 				})
// 			}
// 			//获取图片总数量
// 			imgLength = $(".c-banner .banner ul li").length;
// 			//为底部按钮定义单击事件
// 			$(".c-banner .jumpBtn ul li").each(function(){
// 				//为每个按钮定义点击事件
// 				$(this).click(function(){
// 					clearInterval(time);
// 					$(".c-banner .jumpBtn ul li").css("background-color","white");
// 					jumpImg = $(this).attr("jumpImg");
// 					if(jumpImg!=nexImg){
// 						var after =$(".c-banner .banner ul li").eq(jumpImg);
// 						var befor =$(".c-banner .banner ul li").eq(nexImg);
// 						
// 						//将当前图片试用绝对定位,下一张图片试用相对定位
// 						$(".c-banner .banner ul img").eq(nexImg).css("position","absolute");
// 						$(".c-banner .banner ul img").eq(jumpImg).css("position","relative");
// 						
// 						after.css("display","block");
// 						after.stop().animate({"opacity":1},1000);
// 						befor.stop().animate({"opacity":0},1000,function(){
// 							befor.css("display","none");
// 						});
// 						nexImg=jumpImg;
// 					}
// 					$(this).css("background-color","black");
// 					time =setInterval(intervalImg,3000);
// 				});
// 			});
// 		}
// 	})
// }
</script>
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
	<span style="font-size: 16px;">版权所有：湖北二师17级计科一班</span></p>
    </section>
  </footer>
  <footer id="footer2">
    <ul>
      <li>
        <a href="https://www.okeclass.com/online_front">
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
</body>

<!-- Mirrored from www.okeclass.com/online_front/ by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 26 Sep 2020 07:47:04 GMT -->
</html>

