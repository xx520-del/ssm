<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="generator" content="" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
<link href="${pageContext.request.contextPath}/js/css/haiersoft.css" rel="stylesheet" type="text/css" media="screen,print" />
<link href="${pageContext.request.contextPath}/js/css/print.css" rel="stylesheet" type="text/css"  media="print" />
<script src="${pageContext.request.contextPath}/js/js/jquery-1.10.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/js/side.js" type="text/javascript"></script>
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
<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
<![endif]-->
<script type="text/javascript">
$(function(){
$(".select").each(function(){
var s=$(this);
var z=parseInt(s.css("z-index"));
var dt=$(this).children("dt");
var dd=$(this).children("dd");
var _show=function(){dd.slideDown(200);dt.addClass("cur");s.css("z-index",z+1);};
var _hide=function(){dd.slideUp(200);dt.removeClass("cur");s.css("z-index",z);};
dt.click(function(){dd.is(":hidden")?_show():_hide();});
dd.find("a").click(function(){dt.html($(this).html());_hide();});
$("body").click(function(i){ !$(i.target).parents(".select").first().is(s) ? _hide():"";});})})
</script>
</head>

<body>
<!-- Popup -->
<div id="Popup">
<form action="${pageContext.request.contextPath}/teacher/fileUpload" method="post" enctype="multipart/form-data">
<!-- SubPopup -->
<div id="SubPopup">

<div class="form_boxC">
<p>请在教师展示页查找需要修改的教师工号，搜索后进行修改！</p>

<table cellpadding="0" cellspacing="0">

<tr>
<th width="100"> 工号 <span class="f_cB">*</span></th>
<td><div class="txtbox floatL" style="width:100px;"><input name="depid" type="text" size="5" value="" required="required"></div></td></tr>



<tr>
<th> 姓名 <span class="f_cB">*</span></th>
<td><div class="txtbox floatL" style="width:100px;">
<input name="name" id="name"type="text" size="5" value="">
</div></td></tr>

<tr>
<th> 性别 <span class="f_cB">*</span></th>
<td><!-- selectbox -->
<div class="selectbox" style="width:230px;">
<!-- <dl class="select" name="sex">
<dt>请选择</dt>
<dd><ul>
<li><a href="#"> 男 </a></li>
<li><a href="#"> 女 </a></li>
</ul></dd></dl> -->
<select id="sex" name="sex" class="select">
					<option value="0">女</option>
					<option value="1">男</option>
					
									</select></div><!-- /selectbox --></td></tr>

<tr>
<th> 上传图像 <span class="f_cB">*</span></th>
<td><!-- selectbox -->
<div class="selectbox" style="width:230px;">
<dl class="select" >
<input type="file" name="imgFile" onchange="imgPreview(this)" required="required"></dl></div><!-- /selectbox --></td>
 <img id="preview"  title="点击更换图片" style="z-index: 9; width: 100px; height: 100px"> 
 </tr>

<tr>
<th> 教师职称 <span class="f_cB">*</span></th>
<td><!-- selectbox -->
<div class="selectbox" style="width:230px;">
<dl class="select">
<dt> 请选择 </dt>
<dd><ul>
<li><a href="#"> 院长 </a></li>
<li><a href="#"> 副院长 </a></li>
<li><a href="#"> 教授 </a></li>
<li><a href="#"> 副教授 </a></li>
<li><a href="#"> 讲师 </a></li></ul></dd></dl></div><!-- /selectbox --></td></tr>

<tr>
<th> 联系方式 <span class="f_cB">*</span></th>
<td><div class="txtbox floatL"><input name="phone" type="text" value=""></div></td></tr>

<tr>
<th> 教师简介 </th>
<td><div class="txtbox">
<textarea name="tip" cols="25" rows="5"></textarea>
</div><p class="f_cB pdg_t5">最多500字</p></td></tr>

</table>
</div>
</div>

<!-- SubPopup -->

<div id="BtmBtn">
<div class="btn_boxB floatR mag_l20"><input name="" type="button" value="取消" onmousemove="this.className='input_move'" onmouseout="this.className='input_out'"></div>
<div class="btn_box floatR"><input  type="submit" value="提交" onmousemove="this.className='input_move'" onmouseout="this.className='input_out'"></div></div>
</form>
</div>
<!-- /Popup -->
</body>
</html>