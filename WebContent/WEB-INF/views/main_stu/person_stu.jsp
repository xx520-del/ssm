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
<title>${user.username }</title>
<meta name="author" content="" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
<meta content="telephone=no" name="format-detection" />
 <link rel="icon" href="${pageContext.request.contextPath}/js/img/1.jpg" type="image/x-icon"><!--在网页标题栏左侧显示图标-->
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/js/img/1.jpg" type="image/x-icon"><!--在收藏夹显示图标-->
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



<div class="content clearfix" style="min-height: 386px;">
      
        <div class="inner">
            <div class="wrapper clearfix">
            
                <div class="tab">
                    <ul>
                        <li class="active" style="border-top-left-radius: 5px;border-top-right-radius: 5px">基本信息</li>
                        <li>教育信息</li>
                        <li>头像设置</li>
                        <li>账号安全</li>
                        <li>系统消息</li>
                       
                    </ul>
                </div>
                
                <div class="products ">
                
                    <div class="main selected">
                        <div class="classtit">基本信息</div>
                        <div class="classtext">
                            <form action="" class="form">
                                <div class="line">
                                    <span class="linetext">学　号: &nbsp; &nbsp; ${user.id }</span>
                                </div>
                                <div class="line">
                                    <span class="linetext">姓　名: &nbsp; &nbsp; ${user.username }</span>
                                </div>
                                <div class="line">
                                    <span class="linetext">性　别:</span>
                                    <label><input name="Fruit" type="radio" id="sex" value="男性">(未填写)</label>
                                  <!--   <label><input name="Fruit" type="radio" id="sex" value="女性">女</label> -->
                                </div>
                                <div class="line">
                                    <div class="lineintro">简　介:</div>
                                    <textarea id="stuintro"></textarea>
                                </div>
                                <div class="submit" onclick="ChangeUserInfo();">提交</div>
                            </form>
                        </div>
                    </div>
                    
                    <div class="main">
                        <div class="classtit">教育信息</div>
                        <div class="classtext">
                            <form action="${pageContext.request.contextPath}/student/add" class="form">
                                <div class="line">
                                    <span class="linetext">姓　　名:</span>
                                    <input type="text" value="${user.username }" name="name" id="name" class="inputname" readonly="readonly">
                                </div>
                                <div class="line">
                                    <span class="linetext">学   号:</span>
                                    <input type="text" name="depid" value="${user.id }" class="inputname" readonly="readonly">
                                </div>
                        
                                <div class="line">
                                    <span class="linetext">性   别:</span>
                                  <label><input name="sex" type="radio" id="sex" value="0">女</label>
                                  <label><input name="sex" type="radio" id="sex" value="1">男</label>
                                </div>
                                <div class="line">
                                    <span class="linetext">联系方式:</span>
                                    <input type="text" name="phone" value="" class="inputname">
                                </div>

                                <input class="submit" type="submit" style="margin-top: 100px;"  value="提交">
                            </form>
                        </div>
                    </div>
                    <div class="main">
                        <div class="classtit">头像设置</div>
                        <div class="classtext">
                         <form action="${pageContext.request.contextPath}/student/fileUpload" method="post" enctype="multipart/form-data">
         学号：<input type="text" name="depid" value="${user.id }" class="inputname">
        用户名：<input type="text" name="name" value="${user.username }"> <br>
        文件： <input type="file" required="required" onchange="imgPreview(this)" name="imgFile"> <br>
        <img id="preview"  title="点击更换图片" style="position: absolute; z-index: 9; float: left; width: 100px; height: 100px">
<br><br><br><br>

         <input type="submit" value="上传"class="submit">
        
    </form>
                        </div>
                    </div>
   
                    <div class="main">
                        <div class="classtit">账号安全</div>
                        <div class="classtext">
                            <form action="" class="form">
                                <div class="line">
                                    <span class="linetext">原　密　码:</span>
                                    <input type="password" name="ypassword" id="oldpassword" value="" class="inputname">
                                </div>
                                <div class="line">
                                    <span class="linetext">新　密　码:</span>
                                    <input type="password" name="npassword" id="newpassword" value="" class="inputname">
                                </div>
                                <div class="line">
                                    <span class="linetext">重复新密码:</span>
                                    <input type="password" name="StuName" id="confirmpassword" value="" class="inputname">
                                </div>
                                <div class="submit" style="margin-top: 100px;" onclick="ChangePass();">提交</div>
                            </form>
                        </div>
                    </div>
                    <div class="main" style="">
                        <div class="classtit">系统消息</div>
                        <div id="loader_container" style="width: 800px; height: 522px; display: none;">
                            <img src="/Static/img/load/1111.gif" style="margin-top: 210px;">
                        </div>
                        <div class="textli" id="systemmsg">
                            <ul>
                            <li class="clearfix"><div class="textlileft"><div class="cycle"></div><div class="cycletext">您登录了湖北二师网上学习平台</div></div><div class="textliright">09月27日 09:25:35</div></li>
                            <li class="clearfix"><div class="textlileft"><div class="cycle"></div><div class="cycletext">您登录了湖北二师网上学习平台</div></div><div class="textliright">09月27日 09:25:35</div></li>
                            <li class="clearfix"><div class="textlileft"><div class="cycle"></div><div class="cycletext">您登录了湖北二师网上学习平台</div></div><div class="textliright">09月27日 09:25:35</div></li>
                            <li class="clearfix"><div class="textlileft"><div class="cycle"></div><div class="cycletext">您登录了湖北二师网上学习平台</div></div><div class="textliright">09月27日 09:25:35</div></li>
                            <li class="clearfix"><div class="textlileft"><div class="cycle"></div><div class="cycletext">您登录了湖北二师网上学习平台</div></div><div class="textliright">09月27日 09:25:35</div></li>
                            <li class="clearfix"><div class="textlileft"><div class="cycle"></div><div class="cycletext">您登录了湖北二师网上学习平台</div></div><div class="textliright">09月27日 09:25:35</div></li>
                            <li class="clearfix"><div class="textlileft"><div class="cycle"></div><div class="cycletext">您登录了湖北二师网上学习平台</div></div><div class="textliright">09月27日 09:25:35</div></li>
                            </ul>
                        </div>
                        
                        <div class="tcdPageCode" id="SystcdPageCode"><span class="disabled">上一页</span><span class="current">1</span><a href="javascript:;" class="tcdNumber">2</a><a href="javascript:;" class="tcdNumber">3</a><a href="javascript:;" class="tcdNumber">4</a><span>...</span><a href="javascript:;" class="tcdNumber">29</a><a href="javascript:;" class="nextPage">下一页</a></div>
                    </div>
                 
                </div>
            </div>
        </div>
</div>


<div class="pointdelcount">
    <h2>提示</h2>
    <p>请输入姓名</p>
    <button value="" id="massage">确定</button>
</div>


<script>
  $(function () {
      bindAvatar();
 });
  function bindAvatar() {
      if(window.URL.createObjectURL){
        bindAvatar3();
      }else if(window.FileReader){
        bindAvatar2();
      }else {
        bindAvatar1();
      }
 }
 
  /*window.FileReader本地预览*/
  function bindAvatar2() {
    console.log(2);
       $("#avatarSlect").change(function () {
           var obj=$("#avatarSlect")[0].files[0];
           var fr=new FileReader();
           fr.onload=function () {
               $("#avatarPreview").attr('src',this.result);
               console.log(this.result);
               $("#avatar").val(this.result);
      };
      fr.readAsDataURL(obj);
    })
 }
 /*window.URL.createObjectURL本地预览*/
 function bindAvatar3() {
   console.log(3);
      $("#avatarSlect").change(function () {
          var obj=$("#avatarSlect")[0].files[0];
          var wuc=window.URL.createObjectURL(obj);
           $("#avatarPreview").attr('src',wuc);
           $("#avatar").val(wuc);
{#           $("#avatarPreview").load(function () {#}    /*当图片加载后释放内存空间，但在jQuery3.2.1中会报错。浏览器关闭后也会自动释放*/
{#               window.URL.revokeObjectURL(wuc);#}
{#      })#}
   })
 }
</script>



<!--底部-->

<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?4b61783627934f7062f131c6cc69f635";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>


<!-- 分页S -->
<script src="Static/js/common/jquery.page.js"></script>
<script>
//系统消息分页
var total = 0 ; 
var current = 1 ;
var h = $(".main").height();
var w = $(".main").width();
function loadSysMsgJson()
{
    $.ajax({
        url :"/person/getJson",
        type:"get",
        data:{page:current},
        async:false,
        dataType:"json",
		beforeSend:function(){
           showloading();
		},
		complete:function(){
            hideloading();
        },
        success:function(s)
        {
            total = s.total ; 
            if (parseInt(total) > 0 )
            {
                var _html  = '' ;
                var e = s.rows ;  
                for(var i in e)
                {
                   
                    _html += '<li class="clearfix"><div class="textlileft"><div class="cycle"></div><div class="cycletext">'+ e[i].msg +'</div></div><div class="textliright">'+ e[i].time +'</div></li>';
                }
            }
            $("#systemmsg ul").html(_html) ; 
        }
    })
}
loadSysMsgJson() ; 
$("#SystcdPageCode").createPage({
    pageCount:total,
    current:current,
    backFn:function(p){
        current = p ; 
        loadSysMsgJson();
    }
});

//积分消息
var scoretotal = 0 ; 
var scorecurrent = 1 ;
function loadScoreMsgJson()
{
    $.ajax({
        url :"/person/getScoreMsgJson",
        type:"get",
        data:{page:current},
        async:false,
        dataType:"json",
        beforeSend:function(){
           showloading();
		},
		complete:function(){
            hideloading();
        },
        success:function(s)
        {
        	scoretotal = s.total ; 
            if (parseInt(scoretotal) > 0 )
            {
                var _html  = '' ;
                var e = s.data ;  
                for(var i in e)
                {
                	_html += '<li class="clearfix"><div class="textlileft"><div class="cycle"></div><div class="cycletext">'+ e[i].msg +'</div></div><div class="textliright">'+ e[i].time +'</div></li>';
                }
            }
            $("#scoremsg ul").html(_html) ; 
        }
    })
}
loadScoreMsgJson() ; 
$("#ScoretcdPageCode").createPage({
    pageCount:scoretotal,
    current:scorecurrent,
    backFn:function(p){
        current = p ; 
        loadScoreMsgJson();
    }
});


</script>
<!-- 分页E -->
<script language="javascript">
    $(function(){
        $(".headright").mouseenter(function(){
            $(".exit").show(20)
        })
        $(".headbottom").mouseleave(function(){
            $(".exit").hide(20)
        })
        //    tab栏切换
        $(".tab li").mouseenter(function(){
            var $this = $(this),
                    index = $this.index();
            $this.addClass("active").siblings("li").removeClass("active");
            $(".products .main").eq(index).addClass("selected").siblings("div").removeClass("selected");
        });
    })
</script>












  <!-- 公共底引入 -->





  <footer id="footer">
    <section class="container" style="height:200px;">
		<p style="text-align: center;">
	&nbsp;</p>
<p style="text-align: center;">
	<span style="font-size: 16px;">版权所有：南京市友师网络科技有限公司</span></p>
    </section>
  </footer>
 

<!-- 统计代码 -->

</body>

<!-- Mirrored from www.okeclass.com/online_front/help by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 26 Sep 2020 07:47:22 GMT -->
</html>
