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

<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
<![endif]-->
</head>

<body>
<!-- Popup -->
<div id="Popup">

<!-- SubPopup -->
<div id="SubPopup">
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
<div class="form_boxC">
<p>"<span class="f_cB">*</span>"号为必填项目</p>
<table cellpadding="0" cellspacing="0">
<tr>
<th width="100"> 课程号 <span class="f_cB">*</span></th>
<td><div class="txtbox floatL" style="width:100px;"><input name="" type="text" size="5" value=""></div></td>
</tr>
<tr>
<th> 课程名 <span class="f_cB">*</span></th>
<td><div class="txtbox floatL" style="width:100px;"><input name="" type="text" size="5" value=""></div></td>
</tr>
<tr>
<th> 课程类型 <span class="f_cB">*</span></th>
<td><!-- selectbox -->
<div class="selectbox" style="width:230px;">
<dl class="select">
<dt>请选择</dt>
<dd><ul>
<li><a href="#"> 必修 </a></li>
<li><a href="#"> 选修 </a></li>
</ul></dd></dl>
</div>
<!-- /selectbox --></td>
</tr>
<tr>
<th> 主讲教师 <span class="f_cB">*</span></th>
<td><!-- selectbox -->
<div class="selectbox" style="width:230px;">
<dl class="select">
<dt> 请选择 </dt>
<dd><ul>
<li><a href="#"> 张三 </a></li>
<li><a href="#"> 李四 </a></li>
<li><a href="#"> 王五 </a></li>
<li><a href="#"> 赵六 </a></li>
</ul></dd></dl>
</div>
<!-- /selectbox --></td>
</tr>
<tr>
<th> 价格 <span class="f_cB">*</span></th>
<td><div class="txtbox floatL" style="width:100px;"><input name="" type="text" size="5" value=""></div></td>
</tr>

<tr>
<th> 创建时间 <span class="f_cB">*</span></th>
<td><div class="txtbox floatL"><input name="" type="text" value=""></div></td>
</tr>
<tr>
<th> 课程介绍 </th>
<td><div class="txtbox"><textarea name="" cols="25" rows="5"></textarea></div><p class="f_cB pdg_t5">最多500字</p></td>
</tr>
</table>
</div>
</div>
<!-- SubPopup -->

<div id="BtmBtn">
<div class="btn_boxB floatR mag_l20"><input name="" type="button" value="取消" onmousemove="this.className='input_move'" onmouseout="this.className='input_out'"></div>
<div class="btn_box floatR"><input name="" type="button" value="提交" onmousemove="this.className='input_move'" onmouseout="this.className='input_out'"></div>
</div>
</div>
<!-- /Popup -->
</body>
</html>