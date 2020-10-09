$(function() {
	cssNavigation();
});

/**
 * 头部显示用户信息
 */
function showUserInfo() {
	var user = getLoginUser();
	if(user!=null && user.delFlag =='0'){
		$("#is-login-two").show();
	} else {
		$("#no-login").show();
	}
}
/**
 * 设置导航选中样式
 */
function cssNavigation() {
	var url = window.document.location.pathname;
	$("a[href$='" + url + "']").parent().addClass("current");
}
