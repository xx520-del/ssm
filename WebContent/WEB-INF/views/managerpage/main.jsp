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
<!-- wrap_left -->

<!-- /wrap_left -->

<!-- picBox -->
<div class="picBox" onClick="switchSysBar()" id="switchPoint"></div>
<!-- /picBox -->



<!-- wrap_right -->
<div class="wrap_right">
<header>
<!-- Header -->

<!-- /Header -->
</header>


<!-- Contents -->
<div id="Contents">
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

<!-- MainForm -->
<div id="MainForm">
<div class="form_boxB">
<h2>湖北第二师范学院</h2>
<table cellpadding="0" cellspacing="0">
<!-- <tr>
<td colspan="10" class="info_boxA"><a href="show">刷新</a></td>
</tr> -->
<thead>
<tr>
<th>序号</th>
<th>数据库名</th>
<th>表的数量</th>
<th>表的名称</th>
<th>表的数据数量</th>
<th>表的大小</th>
</tr>
</thead>
<tbody>
<c:forEach items="${numbers2}" var="numbers2">

<c:forEach items="${numbers1}" var="numbers1">
<tr>
<td>1</td>
<td>&nbsp;</td>
<td>${numbers1.table_num }</td>
<td class="money">${numbers2.table_name }</td>
<td class="money">${numbers2.table_rows }</td>
<td class="f_cA">${numbers2.data_size }</td>
</tr>
</c:forEach>
</c:forEach>
</tbody>
<!-- <tr>
<td>2</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td class="money">&nbsp;</td>
<td class="money">&nbsp;</td>
<td class="f_cA">&nbsp;</td>
</tr>
<tr>
<td>3</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td class="money">&nbsp;</td>
<td class="money">&nbsp;</td>
<td class="f_cA">&nbsp;</td>
</tr>
<tr>
<td>4</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td class="money">&nbsp;</td>
<td class="money">&nbsp;</td>
<td class="f_cA">&nbsp;</td>
</tr>
<tr>
<td>5</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td class="money">&nbsp;</td>
<td class="money">&nbsp;</td>
<td class="f_cA">&nbsp;</td>
</tr>
<tr>
<td>6</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td class="money">&nbsp;</td>
<td class="money">&nbsp;</td>
<td class="f_cA">&nbsp;</td>
</tr>
<tr>
<td>7</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td class="money">&nbsp;</td>
<td class="money">&nbsp;</td>
<td class="f_cA">&nbsp;</td>
</tr>
<tr>
<td>8</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td class="money">&nbsp;</td>
<td class="money">&nbsp;</td>
<td class="f_cA">&nbsp;</td>
</tr>
<tr>
<td>9</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td class="money">&nbsp;</td>
<td class="money">&nbsp;</td>
<td class="f_cA">&nbsp;</td>
</tr>
<tr>
<td>10</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td class="money">&nbsp;</td>
<td class="money">&nbsp;</td>
<td class="f_cA">&nbsp;</td>
</tr> -->
</table>
<p class="msg">共找到n条记录，当前显示从第1条至第10条</p>
</div>
</div>
<!-- /MainForm -->


<!-- BtmMain -->
<div id="BtmMain">
<span class="ttl">全部审批</span>

<!-- txtbox -->
<div class="txtbox floatL mag_r20">
<span class="sttl">审核时间：</span>
<input name="" type="text" size="8">
</div>
<!-- /txtbox -->

<!-- txtbox -->
<div class="txtbox floatL mag_r20">
<span class="sttl">审核人：</span>
<input name="" type="text" size="8">
</div>
<!-- /txtbox -->

<!-- btn_box -->
<div class="btn_box floatR mag_l20"><input name="" type="button" value="返回列表" onMouseMove="this.className='input_move'" onMouseOut="this.className='input_out'"></div>
<!-- /btn_box -->

<!-- btn_box -->
<div class="btn_box floatR mag_l20"><input name="" type="button" value="驳回" onMouseMove="this.className='input_move'" onMouseOut="this.className='input_out'"></div>
<!-- /btn_box -->

<!-- btn_box -->
<div class="btn_box floatR mag_l20"><input name="" type="button" value="通过" onMouseMove="this.className='input_move'" onMouseOut="this.className='input_out'"></div>
<!-- /btn_box -->
</div>
<!-- /BtmMain -->

<!-- PageNum -->
<ul id="PageNum">
<li><a href="#">首页</a></li>
<li><a href="#">上一页</a></li>
<li><a href="#">1</a></li>
<li><a href="#">2</a></li>
<li><a href="#">3</a></li>
<li><a href="#">4</a></li>
<li><a href="#">5</a></li>
<li><a href="#">6</a></li>
<li><a href="#">下一页</a></li>
<li><a href="#">尾页</a></li>
</ul>
<!-- /PageNum -->
</div>
<!-- /Contents -->

<!-- /footer -->
<footer>
<address>2020@wangxiao</address>
</footer>
<!-- /footer -->

</div>
<!-- /wrap_right -->
</body>
</html>
