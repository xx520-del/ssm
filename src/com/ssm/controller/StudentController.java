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
import com.ssm.entity.Student;
import com.ssm.entity.Teacher;
import com.ssm.entity.Text;
import com.ssm.service.CourseService;
import com.ssm.service.StudentService;

@Controller
@RequestMapping("student")
public class StudentController {
	
	@Autowired
	private StudentService studentService;


	@RequestMapping("index")
	public String index(){
		return "redirect:/course/hotcourses";
	}
	@RequestMapping("course")
	public String course(){
		return "studentpage/course";
	}
	@RequestMapping("teacher")
	public String teacher(){
		return "studentpage/teacher";
	}
	@RequestMapping("help")
	public String help(){
		return "studentpage/help";
	}
	
	
	/*
	 * 学生登录后》》》 多一个个人中心
	 * 
	 */
	@RequestMapping("index_stu")
	public String index_stu(){
	
		return "redirect:/course/hotcourses_stu";
	}
	@RequestMapping("course_stu")
	public String course_stu(){
		return "main_stu/course_stu";
	}
	@RequestMapping("teacher_stu")
	public String teacher_stu(){
		return "main_stu/teacher_stu";
	}
	@RequestMapping("help_stu")
	public String help_stu(){
		return "main_stu/help_stu";
	}
	@RequestMapping("person_stu")
	public String person_stu(){
		return "main_stu/person_stu";
	}
	
	
	@RequestMapping("add")
	public String add(Student student,HttpServletResponse response) throws Exception{
		Text text=new Text();
		BeanUtils.copyProperties(text,student);
		List<Text> list=studentService.findStudents(text);
		if(list.size()>0) {
			studentService.saveStudents(student);	
			response.setContentType("text/html; charset=UTF-8"); //转码
		    PrintWriter out = response.getWriter();
		    out.flush();
		    out.println("<script>");
		    out.println("alert('个人信息更新成功！');");
		    out.println("history.back();");
		    out.println("</script>");
		    return "main_stu/person_stu";
		}else {
		studentService.insertStudents(student);
		response.setContentType("text/html; charset=UTF-8"); //转码
	    PrintWriter out = response.getWriter();
	    out.flush();
	    out.println("<script>");
	    out.println("alert('个人信息添加成功！');");
	    out.println("history.back();");
	    out.println("</script>");
	    return "main_stu/person_stu";
	}
	}
	
	

	
	
	//上传图片
	@RequestMapping("fileUpload")
    public String upload(HttpServletResponse response,MultipartFile imgFile,Student student,HttpServletRequest request) throws Exception {
        //1. 上传的目标路径
        // D:/classes/IdeaProjects2019/springmvc02/target/springmvc02-1.0-SNAPSHOT/upload
      // String path = request.getSession().getServletContext().getRealPath("/WEB-INF/upimg");
//String path="C:/ttt/up";
		
		String path="C:/eclipse/apache-tomcat-8.5.58-windows-x64/apache-tomcat-8.5.58/webapps/upimg/stu_img";
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
      //  int i = 0;
        fileName=student.getName()+fileName.substring(fileName.lastIndexOf("."));
        System.out.print(fileName);
   
        //4.2 文件上传 【关键代码】
        imgFile.transferTo(new File(file,fileName));
        //信息添加
        Text text=new Text();
		BeanUtils.copyProperties(text,student);
		List<Text> list=studentService.findStudents(text);
		if(list.size()>0) {
			studentService.saveImg(student);	
			response.setContentType("text/html; charset=UTF-8"); //转码
		    PrintWriter out = response.getWriter();
		    out.flush();
		    out.println("<script>");
		    out.println("alert('个人信息更新成功！');");
		    out.println("history.back();");
		    out.println("</script>");
		    List<Student> userlist1=studentService.getuserStudents(student);
			request.getSession().setAttribute("userStudent", userlist1.get(0));
		    
		    return "main_stu/person_stu";
		}else {
		studentService.insertStudents(student);
		response.setContentType("text/html; charset=UTF-8"); //转码
	    PrintWriter out = response.getWriter();
	    out.flush();
	    out.println("<script>");
	    out.println("alert('个人信息添加成功！');");
	    out.println("history.back();");
	    out.println("</script>");
	    List<Student> userlist2=studentService.getuserStudents(student);
		request.getSession().setAttribute("userStudent1", userlist2.get(0));
	    
	    return "main_stu/person_stu";
	}
       // return "redirect:"+"/teacher/add";
   
        
    }
	
	@RequestMapping("manager_all_stu")
	public String show_student(Model model,int i,HttpServletRequest request) throws Exception {
		Student student=new Student();
		List<Student> list=studentService.getStudents(student);
		int pagenum=list.size()/8;
		request.getSession().setAttribute("pagenum", pagenum);
		int toindex=i*8;
			if(toindex>list.size()) {
				toindex=list.size();
			}
			model.addAttribute("manager_students",list.subList((i-1)*8, toindex));
			request.getSession().setAttribute("j", i);
		return "managerpage/studentshow";
		
	}
	//@RequestMapping("all_student")
//	public String show_student(Model model,Student student) throws Exception {
//
////		List<Student> list=studentService.getStudents(student);
////		model.addAttribute("students",list);
////		return "show_teachesrs";
//		
//	}


	

}
