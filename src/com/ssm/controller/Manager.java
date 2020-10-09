package com.ssm.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.entity.Data_sjk;
import com.ssm.entity.Teacher;

import com.ssm.entity.User;
import com.ssm.service.DataService;
import com.ssm.service.TeacherService;
import com.ssm.service.UserService;
@Controller
@RequestMapping("manager")
public class Manager {
	@Autowired
	private DataService dataService;
	private UserService userService;
	private TeacherService teacherService;
	@RequestMapping("show")
	public String show(Model model) throws Exception{
		//User user = (User) request.getSession().getAttribute("user");
		//request.getSession().setAttribute("user", user);
		Data_sjk data_sjk=new Data_sjk();
		List<Data_sjk> list1 = dataService.findNum(data_sjk);
		model.addAttribute("numbers1", list1);
		List<Data_sjk> list2 = dataService.findData(data_sjk);
		model.addAttribute("numbers2", list2);
		return "managerpage/main";
	}
	
	@RequestMapping("personal")
	public String update(Model model,@RequestParam String username,@RequestParam String password,@RequestParam int type) throws Exception{
		//User user = (User) request.getSession().getAttribute("user");
		User manager = new User();
		String u=username;
		String p=password;
		int t=type;
		//manager.setId(u);
		manager.setPassword(p);
		manager.setType(t);
		
		List<User> list=userService.findUsers(manager);
		model.addAttribute("manager", list);
		return "main_manager";

	}
	@RequestMapping("updatemanager")
	public String upma(User user) throws Exception{
		userService.saveUsers(user);
		return "main_manager";
	}
	
	
	
	
	/*
	 * //Manager页面！！！一个都不能少！！
	 * 
	 * @wangxaio
	 */
	@RequestMapping("index")
	public String index() {
		return "managerpage/index";
	}
	@RequestMapping("head")
	public String head() {
		return "managerpage/head";
	}
	@RequestMapping("left")
	public String left() {
		return "managerpage/left";
	}
	@RequestMapping("main")
	public String main() {
		return "managerpage/main";
	}
	@RequestMapping("head2")
	public String head2() {
		return "managerpage/head2";
	}
	@RequestMapping("changepwd")
	public String changepwd() {
		return "managerpage/changepwd";
	}
	@RequestMapping("course")
	public String course() {
		return "managerpage/course";
	}
	@RequestMapping("courseshow")
	public String courseshow() {
		return "managerpage/courseshow";
	}
	@RequestMapping("p2")
	public String p2() {
		return "managerpage/p2";
	}
	@RequestMapping("p3")
	public String p3() {
		return "managerpage/p3";
	}
	@RequestMapping("student")
	public String student() {
		return "managerpage/student";
	}
	@RequestMapping("studentshow")
	public String studentshow() {
		return "managerpage/studentshow";
	}
	@RequestMapping("teacher")
	public String teacher() {
		return "managerpage/teacher";
	}
	@RequestMapping("teachershow")
	public String teachershow() {
		return "managerpage/teachershow";
	}
	@RequestMapping("user")
	public String user() {
		return "managerpage/user";
	}
	@RequestMapping("useradd")
	public String useradd() {
		return "managerpage/useradd";
	}
	@RequestMapping("userupdate")
	public String userupdate() {
		return "managerpage/userupdate";
	}

	
	
	
	
	
}
