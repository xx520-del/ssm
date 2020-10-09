package com.ssm.controller;


import java.io.File;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.ssm.entity.Course;
import com.ssm.entity.Teacher;
import com.ssm.entity.Text;
import com.ssm.entity.Text2;
import com.ssm.entity.User;
import com.ssm.service.TeacherService;


@Controller
@RequestMapping("teacher")
public class TeacherController {
	
	@Autowired
	public TeacherService teacherService;

	@RequestMapping("index_tea")
	public String teacher(){
		return "redirect:"+"main_tea_course";
	}
	@RequestMapping("tea_addcourse")
	public String tea_addcourse(){
		return "main_tea/tea_addcourse";
	}
	@RequestMapping("person_tea")
	public String person_tea(){
		return "main_tea/person_tea";
	}
	@RequestMapping("add")
	public String add(Teacher teacher) throws Exception{
		teacherService.insertTeachers(teacher);
		//return "redirect:"+"/a/all_teacher";
		return "success";
		
	}
	@RequestMapping("fileUpload")
    public String upload(HttpServletResponse response,MultipartFile imgFile,Teacher teacher,HttpServletRequest request) throws Exception {
        //1. 上传的目标路径
        // D:/classes/IdeaProjects2019/springmvc02/target/springmvc02-1.0-SNAPSHOT/upload
      // String path = request.getSession().getServletContext().getRealPath("/WEB-INF/upimg");
//String path="C:/ttt/up";
		User user=new User();
		List<User> list=teacherService.getTeacherids(user);
		int i=0,j=0;
		for(i=0;i<list.size();i++) {
			if(teacher.getDepid()==list.get(i).getId()) {
				++j;
			}
		}
		if(j<=0||imgFile==null||teacher==null) {
			response.setContentType("text/html; charset=UTF-8"); //转码
		    PrintWriter out = response.getWriter();
		    out.flush();
		    out.println("<script>");
		    out.println("alert('请输入正确的教师工号,并填完所有数据！！！');");
		  
		    out.println("</script>");
			}
		
		
		
		String path="C:/eclipse/apache-tomcat-8.5.58-windows-x64/apache-tomcat-8.5.58/webapps/upimg/tea_img";
       System.out.println(path);
       

        //2. 以天为单位，一天创建一个文件夹，保存当天上传的文件
        String date = new SimpleDateFormat("yyyy-MM-dd").format(new Date());

        //3. 创建目录
        File file = new File(path,date);
        if (!file.exists()){
            // 创建目录或子目录
            file.mkdirs();
        }

        //4. 文件上传
        //4.1 获取原始文件名
        String fileName = imgFile.getOriginalFilename();
        //fileName = UUID.randomUUID().toString() + fileName.substring(fileName.lastIndexOf("."));

        fileName=teacher.getName()+fileName.substring(fileName.lastIndexOf("."));
        System.out.print(fileName);
   
        //4.2 文件上传 【关键代码】
        imgFile.transferTo(new File(file,fileName));
        //信息添加
        teacherService.insertTeachers(teacher);
       // return "redirect:"+"/teacher/add";
        response.setContentType("text/html; charset=UTF-8"); //转码
	    PrintWriter out = response.getWriter();
	    out.flush();
	    out.println("<script>");
	    out.println("alert('添加成功！');");
	    out.println("history.back();");
	    out.println("</script>");
        return "managerpage/index";
        
    }
	
	@RequestMapping("all_teacher")
	public String show_teacher(Model model,int i,HttpServletRequest request) throws Exception {
		Teacher teacher=new Teacher();
		List<Teacher> list=teacherService.getTeachers(teacher);
		int pagenum=list.size()/8;
		request.getSession().setAttribute("pagenum", pagenum);
		int toindex=i*8;
			if(toindex>list.size()) {
				toindex=list.size();
			}
			model.addAttribute("teachers1",list.subList((i-1)*8, toindex));
			request.getSession().setAttribute("j", i);
		return "managerpage/teachershow";
		
	}
	@RequestMapping("getall")
	public String getall(Model model,int i,HttpServletRequest request) throws Exception {
		Teacher teacher=new Teacher();
		List<Teacher> list=teacherService.getTeachers(teacher);
		int pagenum=list.size()/8;
		request.getSession().setAttribute("pagenum", pagenum);
		int toindex=i*8;
			if(toindex>list.size()) {
				toindex=list.size();
			}
			model.addAttribute("teachers",list.subList((i-1)*8, toindex));
			request.getSession().setAttribute("j", i);
		return "studentpage/teacher";
		
	}
	@RequestMapping("getall_stu")
	public String getall_stu(Model model,int i,HttpServletRequest request) throws Exception {
		Teacher teacher=new Teacher();
		List<Teacher> list=teacherService.getTeachers(teacher);
		int pagenum=list.size()/8;
		request.getSession().setAttribute("pagenum", pagenum);
		int toindex=i*8;
			if(toindex>list.size()) {
				toindex=list.size();
			}
			model.addAttribute("teachers",list.subList((i-1)*8, toindex));
			request.getSession().setAttribute("j", i);
		return "main_stu/teacher_stu";
		
	}
	
	
	@RequestMapping("main_tea_course")
	public String main_teacher(Model model,Teacher teacher,HttpServletRequest request) throws Exception {
		User u=(User) request.getSession().getAttribute("user");
		teacher.setDepid(u.getId());
		List<Teacher> list=teacherService.main_tea_xinxi(teacher);
		request.getSession().setAttribute("teacher", list.get(0));
		int i=1;
		Course course =new Course();
		course.setName(list.get(0).getName());
		System.out.println(list.get(0).getName());
		List<Course> list2=teacherService.main_tea_course(course);
		int pagenum=list2.size()/8;
		request.getSession().setAttribute("pagenum", pagenum);
		int toindex=i*8;
			if(toindex>list2.size()) {
				toindex=list2.size();
			}
			model.addAttribute("main_tea_courses",list2.subList((i-1)*8, toindex));
			request.getSession().setAttribute("j", i);
		return "main_tea/index_tea";
		
	}
	
	
	
	
	
	
	//@RequestMapping("all_teacher")
//	public String show_teacher(Model model,Teacher teacher) throws Exception {
//
////		List<Teacher> list=teacherService.getTeachers(teacher);
////		model.addAttribute("teachers",list);
////		return "show_teachesrs";
//		
//	}

//	@RequestMapping("a")
//	public String show() {
//
//		return "success";
//		
//	}
	

}
