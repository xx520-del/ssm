package com.ssm.controller;

import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.mail.HtmlEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.entity.Student;
import com.ssm.entity.Teacher;
import com.ssm.entity.Text;
import com.ssm.entity.Text2;
import com.ssm.entity.User;

import com.ssm.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {
	int loginuserid;

	@Autowired
	private UserService userService;
	private UserService userService2;
	
	
	@RequestMapping("manager_alluser")
	public String alluser(Model model,User user,HttpServletRequest request,int i) throws Exception {
		List<User> list=userService.getUser(user);
		int pagenum=list.size()/8;
		
		request.getSession().setAttribute("pagenum", pagenum);
		int toindex=i*8;
			if(toindex>list.size()) {
				toindex=list.size();
			}
			model.addAttribute("manager_users",list.subList((i-1)*8, toindex));
			request.getSession().setAttribute("j", i);
		return "managerpage/zhanghao";
	}

	@RequestMapping("deleteuser")
	public String deleteuser(int id,String username,User user) throws Exception{
		user.setId(id);
		userService.deleteUsers(user);
		try {
			HtmlEmail email = new HtmlEmail();//newHTML Email对象
			email.setHostName("smtp.qq.com");//邮箱类型；126邮箱为smtp.126.com,163邮箱为163.smtp.com，QQ为smtp.qq.com
			email.setCharset("UTF-8");
			email.addTo(username);// 收件地址
 
			email.setFrom("wx-1999@qq.com", "湖北二师网上学习平台");//此处填邮箱地址和用户名,用户名可以任意填写
 
			email.setAuthentication("wx-1999@qq.com", "授权码");//此处填写邮箱地址和客户端授权码
 
			email.setSubject("湖北二师网上学习平台测试");//此处填写邮件名，邮件名可任意填写
			email.setMsg("亲爱的王潇组的成员，您好,您在本平台注册的账号:"+username+"已被管理员注销!");//此处填写邮件内容
 
			email.send();
			return "managerpage/zhanghao";
		}
		catch(Exception e){
			e.printStackTrace();
			return "redirect:/manager/index";
		}
		
	}
	@RequestMapping("updateuser")
	public String updateuser(HttpServletRequest request,HttpServletResponse response,User user,int type,int id,String username,String password) throws Exception {
	if(type==1) {
		response.setContentType("text/html; charset=UTF-8"); //转码
	    PrintWriter out = response.getWriter();
	    out.flush();
	    out.println("<script>");
	    out.println("alert('您不能修改管理员账号！');");
	    out.println("history.back();");
	    out.println("</script>");
	    return "managerpage/zhanghao";
	}
		request.getSession().setAttribute("id", id);
		request.getSession().setAttribute("username", username);
		request.getSession().setAttribute("password", password);
		return "managerpage/zhanghaoupdate";
	}
	@RequestMapping("updatesure")
	public String updatesure(User user) throws Exception {
		userService.saveUsers(user);
	

		return "managerpage/zhanghao";
	}
	
	@RequestMapping("login")
	public String login() {
		return "login";
	}

	@RequestMapping("doLogin")
	@ResponseBody
	public List<User> doLogin(User user, HttpServletRequest request,Model model) throws Exception {
		List<User> list = userService.findUsers(user);
		if (list!=null &&list.size()==1) {
			request.getSession().setAttribute("user", list.get(0));
			
			if(list.get(0).getType()==3) {
			Student student =new Student();
			student.setDepid(list.get(0).getId());
			student.setName(list.get(0).getUsername());
			Text text=new Text();
			BeanUtils.copyProperties(text,student);
			List<Text> list1=userService.findStudents(text);
			if(list1.size()>0) {
				userService.logintimeStudents(student);
				List<Student> userlist1=userService.getuserStudents(student);
				request.getSession().setAttribute("userStudent", userlist1.get(0));
			}else {
				userService.insertlogintimeStudents(student);
				List<Student> userlist2=userService.getuserStudents(student);
				request.getSession().setAttribute("userStudent", userlist2.get(0));
			}
			}
			
			if(list.get(0).getType()==2) {
			Teacher teacher=new Teacher();
			teacher.setDepid(list.get(0).getId());
			Text2 text2=new Text2();
			BeanUtils.copyProperties(text2,teacher);
			List<Text> list2=userService.findTeachers(text2);
			if(list2.size()>0) {
				userService.logintimeTeachers(teacher);
			}else {
				userService.insertlogintimeTeachers(teacher);
				
			}}
			
			
			this.loginuserid=list.get(0).getId();
			System.out.print(list.get(0).getId());
		}
		return list;
	}
	
	@RequestMapping("loginout")
	public String tologout(HttpServletRequest request){
		Enumeration em = request.getSession().getAttributeNames();
		while(em.hasMoreElements()){
			request.getSession().removeAttribute(em.nextElement().toString());
		}
		return "redirect:/student/index";
	}

	@RequestMapping("register")
	public String register() {
		return "register";
	}

	@RequestMapping("doRegister")
	public String doRegister(User user) throws Exception {
	
		int acount = userService.insertUsers(user);
		if (acount > 0) {
			// 注册成功，返回到成功登录页面
			return "login";
		} else {
			// 注册失败，返回注册页面
			return "register";
		}

	}

	@RequestMapping("main_stu")
	public String success3() {
		return "main_stu";
	}
	@RequestMapping("main_teacher")
	public String success2() {
		return "main_teacher";
	}
	@RequestMapping("main_manager")
	public String success1() {
		return "main_manager";
	}
	
	
	/*
	 * //验证码发送！
	 * 
	 * @wangxiao
	 */
	@RequestMapping("send")
	public String sendEmail(Model model,User user,HttpServletResponse response) throws Exception{
	
		List<User> list = userService.registeUsers(user);
		if(list.size()>0) {
			response.setContentType("text/html; charset=UTF-8"); //转码
		    PrintWriter out = response.getWriter();
		    out.flush();
		    out.println("<script>");
		    out.println("alert('此用户名已存在，请重新注册！');");
		    out.println("history.back();");
		    out.println("</script>");
		    return "login";
		}
		//生成4位数验证码
		String code= String.valueOf((int)((Math.random()*9+1)*1000));
		user.setYzm(code);
		model.addAttribute("user",user);
				try {
					HtmlEmail email = new HtmlEmail();//newHTML Email对象
					email.setHostName("smtp.qq.com");//邮箱类型；126邮箱为smtp.126.com,163邮箱为163.smtp.com，QQ为smtp.qq.com
					email.setCharset("UTF-8");
					email.addTo(user.getUsername());// 收件地址
		 
					email.setFrom("wx-1999@qq.com", "湖北二师网上学习平台");//此处填邮箱地址和用户名,用户名可以任意填写
		 
					email.setAuthentication("wx-1999@qq.com", "授权码");//此处填写邮箱地址和客户端授权码
		 
					email.setSubject("湖北二师网上学习平台测试");//此处填写邮件名，邮件名可任意填写
					email.setMsg("亲爱的王潇组的成员，您好,您本次注册的验证码是:" + code);//此处填写邮件内容
		 
					email.send();
					return "register2";
				}
				catch(Exception e){
					e.printStackTrace();
					return "redirect:"+"login";
				}
			}
		
}





//package com.ssm.controller;
//
//import java.util.List;
//
//import javax.servlet.http.HttpServletRequest;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.ResponseBody;
//
//import com.ssm.entity.User;
//import com.ssm.service.UserService;
//
//@Controller
//@RequestMapping("user")
//public class UserController {
//	
//	@Autowired
//	private UserService userService;
//
//	@RequestMapping("login")
//	public String login(){
//		return "login";
//	}
//	
//	
//	@RequestMapping("add")
//	public String add(){
//		return "add";
//	}
//	
//	@RequestMapping("doLogin")
//	@ResponseBody
//	public List<User> doLogin(User user,HttpServletRequest request) throws Exception{
//		List<User> list = userService.findUsers(user);
//		if(list != null && list.size() == 1){
//			request.getSession().setAttribute("user", list.get(0));
//		}
//		return list;
//	}
//
//}
