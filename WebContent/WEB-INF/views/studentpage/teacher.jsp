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


<!-- Mirrored from www.okeclass.com/online_front/teacher by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 26 Sep 2020 07:47:21 GMT -->
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
<div id="aCoursesList" class="bg-fa of"> 
    <!-- /讲师列表 开始 -->
    
    <section class="container">
      <header class="comm-title">
        <h2 class="fl tac"> <span class="c-333">全部讲师</span> </h2>
      </header>
      <section class="c-sort-box">

        <div> 
       	
		
          <article class="i-teacher-list">
            <ul class="of">
             <c:forEach items="${teachers}" var="teachers">
              <li>
                <section class="i-teach-wrap">
                  <div class="i-teach-pic"> <a href="" title="唐江澎"> <img src="${teachers.iconurl }" alt="${teachers.name }"> </a> </div>
                  <div class="mt10 hLh30 txtOf tac"> <a href="teacher/8e46a0659491459483c1c1748b3e5e15.html" title="唐江澎" class="fsize18 c-666">${teachers.name }</a> </div>
                  
                  <div class="mt15 i-q-txt">
                    <p class="c-999 f-fA">${teachers.tip }</p>
                  </div>
                </section>
              </li>
			</c:forEach>
             
            </ul>
            <div class="clear"></div>
          </article>
         
        </div>
        
        <!-- 公共分页 开始 --> 
		




<script type="text/javascript" src="js/page.js"></script>

	<div class="paging"> 
		<a href="javascript:goPage(1);" title="">首</a>
		
		
			<a id="backpage" href="${pageContext.request.contextPath}/teacher/getall?i=${j-1>0?j-1:1}" title="">&lt;</a>
		
		
		
			<a id="nextpage" href="${pageContext.request.contextPath}/teacher/getall?i=${j+1>pagenum+1?pagenum+1:j+1}" title="">&gt;</a>
		
		<a href="javascript:goPage(0);" title="">末</a>
		<div class="clear"></div>
	</div>

<script type="text/javascript">
    var totalPageSize =0;
    var currentPage =
    0<1 ? 1 :1;
    var totalPage = 0;
    showPageNumber();
</script>
		<!-- 公共分页 结束 -->
        <div>
          <form action="https://www.okeclass.com/online_front/teacher" id="searchForm" method="post">
          <input type="hidden" id="pageNo" name="pageNo" value="1" />
          <input type="hidden" id="subject" name="subject" value="" />
          <input type="hidden" id="grade" name="grade" value="" />
          
          </form>
        
      </section>
    </section>
    
    <!-- /讲师列表 结束 --> 
    
  </div>
  <script type="text/javascript">

	$(function() {

		cSortFun(); //分类更多按钮交互效果

		scrollLoad(); //响应滚动加载课程图片

	});

	//sort suMore

	var cSortFun = function() {
	    $(".c-s-dl>dl .c-s-more>a").each(function() {

	        var _this = $(this),

	            _uList = _this.parent().siblings("ul"),

	            _uLw = _uList.height();

	        if (_uLw <= "40") {

	            _this.hide();

	        } else {

	            _uList.css("height","40px");

	            _this.click(function() {

	                if(_this.html() == "[展开]") {

	                    _uList.css("height","auto");

	                    _this.text("[收起]");

	                } else {

	                    _uList.css("height" , "40px");

	                    _this.text("[展开]");

	                }

	            })

	        }

	    });

	}

	/**

	 * 条件查询

	 */

	 function submitForm(type,keyWord){
			if(type==1){
				$("#subject").val(keyWord);
			}else if(type==2){
				$("#grade").val(keyWord);
			}else if(type==3){
				$("#ext1").val(keyWord);
			}
			$("#searchForm").submit();
		}

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

<!-- 统计代码 -->
<script>
  $(function(){
    $("#footer2>ul>li").eq(0).addClass("current")
  })
</script>
</body>

<!-- Mirrored from www.okeclass.com/online_front/teacher by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 26 Sep 2020 07:47:22 GMT -->
</html>
