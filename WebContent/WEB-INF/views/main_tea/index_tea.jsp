
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
               		    <div class="headname">欢迎您！老师</div>
               		          <div id="exit" style="">
	                    <ul>
	                       <li><a href="${pageContext.request.contextPath}/teacher/person_tea" >个人中心</a></li><!-- target="_blank" -->
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
                <section class="course-img"><a href=""><img src="${main_tea_courses.img }" class="img-responsive" alt="${main_tea_courses.name}"></a>
                  <div class="cc-mask"> <a href="" title="开始学习" class="comm-btn c-btn-1">开始学习</a> </div>
                </section>
                <h3 class="hLh30 txtOf mt10"> <a href="" title="${main_tea_courses.name }" class="course-title fsize18 c-333">${main_tea_courses.name}</a></h3>
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
      
        
           <table cellpadding="0" cellspacing="0" style='background-color:#AEBBB3'>
<!-- <tr>
<td colspan="10" class="info_boxA"><a href="show">刷新</a></td>
</tr> -->
<thead>
<tr>
<th width="5%">序号</th>
<th width="5%">课程名称</th>
<th width="5%">课程类型</th>
<th width="5%">课时数</th>
<th width="5%">课程价格</th>
<th width="10%">课程封面</th>
<th width="10%">创建时间</th>
<th width="5%">点击人数</th>
<th width="15%">课程资料</th>
<th width="15%">课程介绍</th>
<th width="20%">课程管理</th>
</tr>
</thead>
<tbody>
 <c:forEach items="${main_tea_courses}" var="main_tea_courses">
<tr>
<td>${main_tea_courses.id}</td>
<td>${main_tea_courses.name }</td>
<td>${main_tea_courses.type}</td>
<td>${main_tea_courses.number}</td>
<td class="f_cA">${main_tea_courses.price }</td>
<td><img src="${main_tea_courses.img}" style="width:100px;height:100px;"></td>
<td>${main_tea_courses.cre_time}</td>
<td>${main_tea_courses.stu_much}</td>
<td><video src="${main_tea_courses.video}" controls="controls" width="150" height="100"></td>
<td>${main_tea_courses.tip}</td>
<td><a href="${pageContext.request.contextPath}/course/change">编辑</a>&&&<a href="${pageContext.request.contextPath}/course/delete?id=${main_tea_courses.id}">删除</a></td>
</tr>
     </c:forEach>
</tbody>



</table>

 <div class="clear"></div>
     
          <section class="tac pt20"> 
          <a href="tea_addcourse" title="发布课程" class="comm-btn c-btn-2">
         发布课程>>></a>
           </section>
 

           
 
        </div>
        </div>
      </section>
    </div>
    <!-- /网校名师 结束 --> 
  </div>
  
  <form action="${pageContext.request.contextPath}/course/" id="searchForm" method="post">
  	<input type="hidden" id="ext1" name="ext1" value="" />
  </form>
  <form action="${pageContext.request.contextPath}/course/" id="searchForm1" method="post">
	<input type="hidden" id="pageNo" name="pageNo" />
	<input type="hidden" id="ext2" name="ext2" />
  </form>
  <script type="text/javascript" src="js/swiper-2.1.0.js"></script> 
  <script type="text/javascript" src="js/index.js"></script> 
  <script type="text/javascript" src="js/jquery.edslider.js"></script> 
  <!--<script type="text/javascript" src="front/index_theme_color.js"></script>--><!-- 换肤 --> 
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
</body>

<!-- Mirrored from www.okeclass.com/online_front/ by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 26 Sep 2020 07:47:04 GMT -->
</html>

