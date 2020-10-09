
var setting={
	view: {
		showIcon: true,//是否显示节点图片
		dblClickExpand: false,//是否双击展开节点
		showLine: true,//是否显示节点之间的连接线
		selectedMulti: false,//是否可以按Ctrl键选择多个节点
		nameIsHTML:true
	},
	data: {
		simpleData: {
			enable:true,//true  false 分别表示 使用  不使用 简单数据模式
			idKey: "kpointId",//节点数据中保存唯一标识的属性名称,enable = true 时生效
			pIdKey: "parentId"//节点数据中保存其父节点唯一标识的属性名称。[setting.data.simpleData.enable = true 时生效]
		},
		key: {
			name: "name",//标明节点的显示属性
			title:"name"
		}
	},
	callback: {
		//当单击时触发的方法，三个参数是固定的
		onClick:  function(event,treeId, treeNode) {
			if(!treeNode.isParent){
				//1免费
				var videoUrl = treeNode.videoUrl;
				if(videoUrl!=null && $.trim(videoUrl)!=''){
					if(treeNode.free==1){
						playVideo(videoUrl);
					}else if(treeNode.free==2){//收费
						if(isok==true){
							playVideo(videoUrl);
						}
					}
				}
			}
		}
	}
};

/**
 * 获得播放器的html 
 * @param kpointId
 * @param obj
 */
function getPlayerHtml(kpointId,free,obj) {
	//节点选中
	$(".lh-menu-stair").find("ul>li>a,ol>li>a").removeClass("current-2");
	$(obj).addClass("current-2");
	
	if(isok==true || currentprice <= 0 || free==1){
		$.ajax({
			url : "" + baselocation + "/front/ajax/getKopintHtml",
			data : {
				"kpointId" : kpointId,
				"courseId" : otherId
			},
			type : "post",
			dataType : "text",
			async:false,
			success : function(result) {
				//alert(result);
				//$("#videoPlay").html("1111"+"<script src='http://p.bokecc.com/player?vid=28410965A68FCF5B9C33DC5901307461&siteid=F9C3434C51509878&autoStart=true&width=100%&height=100%&playerid=51A2AD3118ACAD37&playertype=1' type='text/javascript'></script>"+result);
				$("#videoPlay").html(result);
				$("html,body").animate({scrollTop : $("#videoPlay").offset().top - 60}, 500);//滑动到播放位置
			}
		});
	}else{
		dialog('提示',"该课程视频暂不支持试听,请购买后观看!",1);
		return;
	}
	
}

$(function(){
	shareShow();
	/*if(vedioConent==null || vedioConent==''){
		$("#zTreeMenuWrap").html(' <div class="mt50 mb50"><div class="tip pl10 pr10 of tac"><tt class="disIb icon30 png vam tipIcon"></tt><font class="vam c_666 fsize14">课程暂时没有上传视频</font></div></div>');
	}else{
		//初始化树结构，三个参数中前两个必须的
		var zTrees = $.fn.zTree.init($("#zTreeMenuWrap"), setting, vedioConent);
		zTrees.expandAll(true);
	}*/
});
/**
 * 显示分享组件
 */
function shareShow() {
	$(".kcShare").hover(function() {
		$(this).stop().animate({"width" : "205px"}, 200);
		$(this).siblings("span").css({"width" : "60px"});
		$(this).children("#bdshare").stop().animate({"right" : "0"}, 200);
	}, function() {
		$(this).stop().animate({"width" : "48px"}, 200);
		$(this).children("#bdshare").stop().animate({"right" : "-160px"}, 200);
	});
}

/**
 * 购买
 * @param courseId 课程ID
 */
function buy(courseId){
	if(!isLogin()){
		lrFun();
	}else{
	    loseTimeTime = new Date(loseTimeTime.replace("-", "/").replace("-", "/"));
	    //非直播课程直接购买
	    if(loseType=='0'){
	    	var nowDAte = new Date();
	        if(loseTimeTime>nowDAte){
	        	window.open(baselocation+'/zfbpay/gotozfb/'+courseId);
	        }else{
	            dialog('提示',"对不起，课程已过期!",1);
	        }
	    }else{
	    	window.open(baselocation+'/zfbpay/gotozfb/'+courseId);
	    }
		
	}
}

/**
 * 收藏课程
 * @param courseId 课程ID
 */
function favorites(courseId,obj){
	if(isLogin()){
		$.ajax({
			url:baselocation+'/front/createfavorites/'+courseId,
			type:'post',
			dataType:'json',
			success:function(result){
				if(result.success==false){
					dialog('提示',result.message,1);
				}else{
					$(obj).html("已收藏").attr("title","已收藏").parent().addClass("sc-end");
					dialog('提示',result.message,0);
				}
			}
		});
	}else{
		lrFun();
	}
}

//视频试听播放方法
function vedioClick(freeVideoId){
	if(freeVideoId!=""&&freeVideoId!=0&&freeVideoId!=null)
	{
		// 播放视频
		getPlayerHtml(freeVideoId,1,"");
	}else{
		dialog('提示',"该课程暂不支持试听!",1);
	}
}//加入学习方法function joinClick(courseId){	if(!isLogin1()){		//dialog('提示',"请登录之后再学习!",0);		lrFun(5, courseId);	}else{		$.ajax({			url:'/online_front/mySelect',			type:'post',			dataType:'json',			data:{				"courseId":courseId			},			success:function(result){				if(result.entity == null){					dialog('提示',result.message,0);				}else{										var strs = new Array();					strs = result.entity.split(";");					//strs[0]二维码str[1]交易编号					var path = '/online_front/show?code='+ strs[0];					var url1 = "<img src='"+path+"' style='display:block;width:100%;'>";					dialog1('提示',result.message,0,url1);					//dialog2('提示',result.message,3,url1);					var sum = 0;					var t = setInterval(function(){						sum++;						if(sum > 60){							$(".dialogWrap").remove();							$(".bMask").remove();							clearInterval(t);						}else{							$.ajax({								url:'/online_front/orderStatus',								type:'post',								dataType:'json',								data:{									"orderNumber":strs[1]								},								success:function(data){									if(data.entity.ext4 == '1'){										$(".dialogWrap").remove();										$(".bMask").remove();										dialog('提示',"您已报名，请进入个人空间学习！",0);										clearInterval(t);									}								}							});						}					}, 3000);				}			}		});	}}//在选课页面播放视频（权限认证）function myPlayer(seriesId,courseId, type){	if(!isLogin1()){		lrFun(5, seriesId);	}else{		var url;		$.ajax({			url:'/online_front/isLogin',			type:'post',			dataType:'json',			data:{				"courseId":courseId			},			success:function(result){				if(result.success){					if(type == '1'){						url="/online_front/videoPlay1/"+courseId;						window.location.href = url;					}else{						$.ajax({							url:'/online_front/hasReply',							type:'post',							dataType:'json',							data:{								"courseId":courseId							},							success:function(result1){								if(result1.success){									url="/online_front/vLivePlay1?id="+courseId;									window.location.href = url;								}else{									dialog('提示','直播已结束，暂未设置回放！',0);								}							}						});					}				}else{					dialog('提示',result.message,0);				}			}		});	}}//课程资料下载（权限认证）function myDownload(seriesId, courseId, sourceId){	if(!isLogin1()){		lrFun(5, seriesId);	}else{		var url;		$.ajax({			url:'/online_front/isLogin1',			type:'post',			dataType:'json',			data:{				"courseId":courseId			},			success:function(result){				if(result.success){					url = "/online_front/download1/"+sourceId;					window.location.href = url;				}else{					dialog('提示',result.message,0);				}			}		});	}}//在选课页面播放视频（权限不要认证，游客和会员都能观看）function myPlayer1(courseId, type){	var url;	if(type == '1'){		url="/online_front/videoPlay2/"+courseId;		window.location.href = url;	}else{		$.ajax({			url:'/online_front/hasReply',			type:'post',			dataType:'json',			data:{				"courseId":courseId			},			success:function(result1){				if(result1.success){					url="/online_front/vLivePlay2?id="+courseId;					window.location.href = url;				}else{					dialog('提示','直播已结束，暂未设置回放！',0);				}			}		});	}}//课程资料下载（权限不要认证，游客和会员都能下载）function myDownload1(courseId, sourceId){	var url;	url = "/online_front/download2/"+sourceId;	window.location.href = url;}