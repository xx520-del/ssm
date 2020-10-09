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


<!-- Mirrored from www.okeclass.com/online_front/course/7bf2eb5961ec4ce686d52d992001cc3a by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 26 Sep 2020 07:47:23 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0,user-scalable=no,minimal-ui">
<title>湖北二师网上学堂</title>
<meta name="author" content="" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
<meta content="telephone=no" name="format-detection" />
 <link rel="icon" href="${pageContext.request.contextPath}/js/img/1.jpg" type="image/x-icon"><!--在网页标题栏左侧显示图标-->
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/js/img/1.jpg" type="image/x-icon"><!--在收藏夹显示图标-->
<script>
function join(){
	if(${user.username==null}){
		alert("您没有登录，请登录后学习！");
	}
}
</script>

<script type="text/javascript">
	var isok = true;
	var currentprice=0.00;
</script>
<style>
  .lh-menu-no{
    display: inline-block;
    width: 18px;
    height: 18px;
    border-radius: 50%;
    border: 1px solid #52cc90;
    text-align: center;
    line-height: 18px;
    color: #52cc90;
  }
  .iBtn{
    background-color: #52cc90;
    padding: 4px 12px;
    border-radius: 3px;
    color: #fff;
    margin-left: 20px;
  }
  .iBtn1{
    background-color: #ff0000;
    padding: 4px 12px;
    border-radius: 3px;
    color: #fff;
    margin-left: 20px;
  }
  .iCurrent{
    background-color: #ddd;
    color: #adaaa7;
  }
  .lh-menu-second{
    margin: 6px 0;
  }
  .listDiv{ display: none;}
  .listDiv:first-child{ display: block;}
  .lh-menu ul li.lh-menu-stair{
    border-bottom: 0 !important; 
    padding-bottom: 0 !important;
    margin-bottom: 0 !important; 
  }
  .lh-menu ul li.lh-menu-stair a{padding: 0 !important;}
</style>
</head>

<body class="W-body">
<div class="in-wrap"> 




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
<div id="aCoursesList" class="bg-fa of"> 
    <!-- /课程详情 开始 -->
    <c:forEach items="${courses}" var="courses">
    <section class="container">
      <section class="path-wrap txtOf hLh30"> <a href="${pageContext.request.contextPath}/student/index" title="" class="c-999 fsize14">首页</a> \ <a href="${pageContext.request.contextPath}/course/getall?i=1" title="" class="c-999 fsize14">课程列表</a> \ <span class="c-333 fsize14">${courses.name}</span> </section>
      <div>
        <article class="c-v-pic-wrap">
          <section class="p-h-video-box" id="videoPlay"> <img src="${courses.img }" alt="${courses.name }" class="dis c-v-pic" style="width:350px;height:350px;" /> <a href="javascript:void(0)" onclick="vedioClick()" title="${courses.name }" class="v-play-btn"></a> </section>
          <section class="p-h-video-tip"> <img src="../img/v-loading.gif">
            <p class="hLh20"><span class="c-999">加载中...</span></p>
          </section>
        </article>
        <aside class="c-attr-wrap">
          <section class="ml30 mr15">
            <h2 class="hLh30 txtOf titleMar"> <span class="c-333 fsize24">${courses.name}</span>   
              
             
             
              [<font color="#FFA500">报名中</font>]
                
             </h2>
            <section class="c-attr-jg"> <span class="c-999">价格：</span><big class="c-green">
            
            
            	${courses.price<1?'校内任选（免费）':courses.price} 元
            
            </big></section>
            <section class="c-attr-mt c-attr-undis cmt25">
				<span class="c-999 fsize14">讲师：${courses.teacher }&nbsp;&nbsp; 
              &nbsp;&nbsp; </span>
				<span class="c-999 fsize14">课时数：${courses.number}&nbsp;&nbsp; 
              &nbsp;&nbsp; </span>
			  <span class="c-999 fsize14">播放量：0&nbsp;&nbsp; 
              &nbsp;&nbsp; </span>
            </section>

            <section class="c-attr-mt c-attr-time"> 
            	<span class="c-999 fsize14">报名截止时间：
		              2020-12-30 17:29
		        </span> 
            </section>
            
            <section class="c-attr-mt">
            	
            		<a href="javascript:void(0)" title="加入学习" onclick="join()" class="comm-btn c-btn-3 bgb">加入学习</a> <span class="ml10"><tt class="c-green f-fM"></tt></span>
            	
            	
			</section>
			
            <section class="c-attr-mt of ml10">
			</section>
          </section>
        </aside>
        <div class="clear"></div>
      </div>
      <!-- /课程封面介绍 -->
      <div class="mt20 c-infor-box">
        <article class="fl col-7">
          <section class="mr30">
            <div class="i-box">
              <div>
                <section id="c-i-tabTitle" class="c-infor-tabTitle c-tab-title"> <a class="current" title="课程安排" href="javascript: void(0)">课程安排</a><a title="课程介绍" href="javascript: void(0)">课程介绍</a><a title="课程资料" href="javascript: void(0)">课程资料</a></section>
              </div>
              <article class="ml10 mr10 pt30">
                <div class="listDiv">
                  <div>
                    <h6 class="c-i-content c-infor-title"> <span>课程安排</span> </h6>
                     
				   
                    <section class="mt20">
                      <div class="lh-menu-wrap">
                        <menu id="lh-menu" class="lh-menu mt10 mr10">
                          <ul>
                            <!-- 视频 -->
                                <li class="lh-menu-stair">
                                  <ul class="lh-menu-ol no-parent-node">
                                  
                                    <li class="lh-menu-second">
                                    	
                                        <a title="" onclick="return joinClick()" href="javascript:void(0)">
                                        
                                        
                                        <span class="fr">
                                        	
                                        	<em class="ml5">${courses.cre_time}</em>
                                        	
                                        	
                                        		
                                        		
                                        		                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                        			
                                        				<i class="iBtn">去学习
                                        				
                                        			
                                        		
                                        	
                                        	</i>                                        	
                                        	
                                        	
                                        </span>
                                        <em class="lh-menu-no mr5">1</em>${courses.name }
                                      </a>
                                    </li>
								 
                                  </ul>
                                </li>
                              </ul>
                        </menu>
                      </div>                     
                    </section>
                   
                  </div>
                </div>
                <!-- /课程介绍 -->
                <div class="commentHtml listDiv">
                  <h6 class="c-i-content c-infor-title"> <span>课程介绍</span> </h6>
                  <!-- /无数据提示 开始--> 
				  
						<section class="no-data-wrap">
							<em class="icon30 no-data-ico">&nbsp;</em> <span class="c-666 fsize14 ml10 vam">${courses.tip }</span>
						</section>
				  
                  <!-- /无数据提示 结束-->
                  
                </div>
                <div class="commentHtml listDiv">
                  <div>
                    <h6 class="c-i-content c-infor-title"> <span>课程资料</span> </h6>
                    
						<section class="no-data-wrap">
							<em class="icon30 no-data-ico">&nbsp;</em> <span class="c-666 fsize14 ml10 vam">您没有登录！登录后才可查看课程资料哟！</span>
						</section>
                    
                    
                  </div>
                </div>
                <!-- /课程评论 --> 
              </article>
            </div>
          </section>
          
        </article>
        <aside class="fl col-3">
          <div class="i-box">
            <div>
              <section class="c-infor-tabTitle c-tab-title"> <a title="" href="javascript:void(0)">讲师</a> </section>
              <section class="stud-act-list">
                <ul style="height: auto;">
                  <li>
                    <div class="u-face"> <a href="#"> <img src="${courses.img }" width="50" height="50" alt=""> </a> </div>
                    <section class="hLh30 txtOf"> <a class="c-333 fsize16 fl" href="#">${courses.teacher}</a> </section>
                    <section class="hLh20 txtOf"> <span class="c-999"></span> </section>
                  </li>
                </ul>
              </section>
            </div>
          </div>
        </aside>
        <div class="clear"></div>
      </div>
    </section>
    </c:forEach>
    <!-- /课程详情 结束 --> 
  </div>
  <script type="text/javascript" src="../js/courseInfo.js"></script> 
  <script type="text/javascript" src="../js/comment.js"></script> 
  <script>
		//评论课程id
		var otherId = '20';
		//课程有效期到期时间
		var loseTimeTime = '';
		//有效期类型，0：到期时间，1：按天数
		var loseType="1";
		//评论类型,类型2为课程
		var type = 2;
		$(function() {
			//shareShow(); //课程分享
			//treeMenu(); //课程树
			//replyFun(); //回复展开
			cTabFun($("#c-i-tabTitle>a")); //滚动定位
			//queryComment();//评论
			 //学过此课程的用户
		    //getCourseLearnedUser("20");
		  	//课程详情收起展开
		    //ctbodyFun();
		  	//课程封面图适配尺寸
		    //cvPic();
		});
		//课程详情收起展开
		var ctbodyFun = function() {
			var ctb = $(".course-txt-body"),
				ctBtn = $(".ctb-btn>a");
			if (ctb.height() < 88) {
				ctBtn.parent().hide();
				return false;
			} else {
				ctb.css({"height" : "88px"});
				ctBtn.parent().show();
				ctBtn.toggle(function() {
					ctBtn.text("收起更多∧");
					ctb.stop().animate({"height" : "100%"}, 500);
				}, function() {
					ctBtn.text("查看更多∨");
					ctb.css({"height" : "88px"});
				});
			};
		};
		//课程封面图适配尺寸
		var cvPic = function() {
			$(".c-v-pic-wrap").css("height" , $(".c-v-pic").height());
		}
		window.onresize = function() {cvPic();};
    //显示隐藏
    $("#c-i-tabTitle>a").click(function(){
      $(".listDiv").eq($(this).index()).show().siblings().hide();
    })
	</script> 
  <!-- 公共底引入 -->

<footer class="courseInfo">
	<span onclick="joinClick()" class="payBtn">加入学习</span>
	
</footer>






<link rel="stylesheet" type="text/css" href="../css/reset.css">
<link rel="stylesheet" type="text/css" href="../css/theme.css">
<link rel="stylesheet" type="text/css" href="../css/global.css">
<link rel="stylesheet" type="text/css" href="../css/web.css">
<link href="../css/mw_320_768.css" rel="stylesheet" type="text/css" media="screen and (min-width: 320px) and (max-width: 768px)">

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
          <img class="icon11" src="../img/footIcon1.png">
          <img class="icon22" src="../img/footIconActive1.png">
          <span>首页</span>
        </a>
      </li>
      <li>

      	<a href="../course.html">
          <img class="icon11" src="../img/footIcon2.png">
          <img class="icon22" src="../img/footIconActive2.png">
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
          <img class="icon11" src="../img/footIcon5.png">
          <img class="icon22" src="../img/footIconActive5.png">
          <span>我的</span>
        </a>
      	
      	
      </li>
    </ul>
  </footer>
  <!-- 公共底引入 -->  
</div>

<!-- 统计代码 -->
<script>
  $(function(){
    $("#footer2>ul>li").eq(1).addClass("current")
  })
</script>
</body>

<!-- Mirrored from www.okeclass.com/online_front/course/7bf2eb5961ec4ce686d52d992001cc3a by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 26 Sep 2020 07:47:23 GMT -->
</html>

