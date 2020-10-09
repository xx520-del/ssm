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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.ssm.entity.Course;
import com.ssm.entity.Teacher;
import com.ssm.entity.User;
import com.ssm.service.CourseService;


@Controller
@RequestMapping("course")
public class CourseController extends UserController{
	
	@Autowired
	private CourseService courseService;

	
	@RequestMapping("hotcourses_stu")
	public String index_stu(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception{
		User u=(User) request.getSession().getAttribute("user");
		if(u==null) {
			response.setContentType("text/html; charset=UTF-8"); //转码
		    PrintWriter out = response.getWriter();
		    out.flush();
		    out.println("<script>");
		    out.println("alert('登录身份已过期，请重新登录！');");
		    out.println("</script>");
		    
			return "main_stu/index_stu";
		}
		int loginuserid=u.getId();
		Course course =new Course();
		List<Course> list1=courseService.hotCourses(course);
		model.addAttribute("hotcourses", list1);
		
		Teacher teacher=new Teacher();
		List<Teacher> list2=courseService.hotTeachers(teacher);
	model.addAttribute("hotteachers", list2);

	Course usercourse=new Course();
	usercourse.setId(loginuserid);
	System.out.print(loginuserid);
	List<Course> list3=courseService.yxCourses(usercourse);
	model.addAttribute("yxcourses", list3);
	
		return "main_stu/index_stu";
	}
	@RequestMapping("hotcourses")
	public String index(Model model) throws Exception{
		Course course =new Course();
		List<Course> list1=courseService.hotCourses(course);
		model.addAttribute("hotcourses", list1);
		Teacher teacher=new Teacher();
		List<Teacher> list2=courseService.hotTeachers(teacher);
	model.addAttribute("hotteachers", list2);
		return "studentpage/index";
	}
	@RequestMapping("getall_stu")
	public String allcourse_stu(Model model,int i,Course course,HttpServletRequest request) throws Exception{
		List<Course> list=courseService.getCourses(course);
		int pagenum=list.size()/8;
		
		request.getSession().setAttribute("pagenum", pagenum);
		int toindex=i*8;
			if(toindex>list.size()) {
				toindex=list.size();
			}
			model.addAttribute("courses",list.subList((i-1)*8, toindex));
			request.getSession().setAttribute("j", i);
		return "main_stu/course_stu";
		
	}

	@RequestMapping("getall")
	public String allcourse(Model model,int i,Course course,HttpServletRequest request) throws Exception{
		List<Course> list=courseService.getCourses(course);
		int pagenum=list.size()/8;
		
		request.getSession().setAttribute("pagenum", pagenum);
		int toindex=i*8;
			if(toindex>list.size()) {
				toindex=list.size();
			}
			model.addAttribute("courses",list.subList((i-1)*8, toindex));
			request.getSession().setAttribute("j", i);
		return "studentpage/course";
		
	}
	
	
	@RequestMapping("manager_allcourse")
	public String mana_a_c(Model model,int i,Course course,HttpServletRequest request) throws Exception{
		List<Course> list=courseService.getCourses(course);
		int pagenum=list.size()/5;
		
		request.getSession().setAttribute("pagenum", pagenum);
		int toindex=i*5;
			if(toindex>list.size()) {
				toindex=list.size();
			}
			model.addAttribute("manager_courses",list.subList((i-1)*5, toindex));
			request.getSession().setAttribute("j", i);
		return "managerpage/courseshow";
		
	}
	@RequestMapping("selectcourse_stu")
	public String selectcourse_stu(Model model,Course course,HttpServletRequest request) throws Exception{

		List<Course> list=courseService.selectCourses(course);
	
		int pagenum=list.size()/8;
		int i=1;
		request.getSession().setAttribute("pagenum", pagenum);
		int toindex=i*8;
			if(toindex>list.size()) {
				toindex=list.size();
			}
			model.addAttribute("courses",list.subList((i-1)*8, toindex));
			request.getSession().setAttribute("j", i);
		return "main_stu/course_stu";
		
	}
	@RequestMapping("kindcourse_stu")
	public String kindcourse_stu(Model model,String data,HttpServletRequest request) throws Exception{
Course course=new Course();
course.setName(data);
		List<Course> list=courseService.selectCourses(course);
	
		int pagenum=list.size()/8;
		int i=1;
		request.getSession().setAttribute("pagenum", pagenum);
		int toindex=i*8;
			if(toindex>list.size()) {
				toindex=list.size();
			}
			model.addAttribute("courses",list.subList((i-1)*8, toindex));
			request.getSession().setAttribute("j", i);
		return "main_stu/course_stu";
		
	}
	@RequestMapping("selectcourse")
	public String selectcourse(Model model,Course course,String data,HttpServletRequest request) throws Exception{
		if(data!=null) {
			course.setName(data);
		}
		List<Course> list=courseService.selectCourses(course);
	
		int pagenum=list.size()/8;
		int i=1;
		request.getSession().setAttribute("pagenum", pagenum);
		int toindex=i*8;
			if(toindex>list.size()) {
				toindex=list.size();
			}
			model.addAttribute("courses",list.subList((i-1)*8, toindex));
			request.getSession().setAttribute("j", i);
		return "studentpage/course";
		
	}
	
	@RequestMapping("coursexq_stu")
	public String coursexq_stu(Model model,Course course,int id,HttpServletRequest request) throws Exception{
course.setId(id);
		List<Course> list=courseService.coursexqCourses(course);
		model.addAttribute("courses",list);

		return "main_stu/coursexq_stu";
		
	}
	@RequestMapping("coursexq")
	public String coursexq(Model model,Course course,int id,HttpServletRequest request) throws Exception{
course.setId(id);
		List<Course> list=courseService.coursexqCourses(course);
		model.addAttribute("courses",list);

		return "studentpage/coursexq";
		
	}
	
	@RequestMapping("choose_stu")
	public String choose_stu(HttpServletResponse response,Model model,int courseid,int id,Course course,HttpServletRequest request) throws Exception{
try {
	course.setDepid(id);

			course.setId(courseid);
			courseService.muchCourses(course);
		List<Course> list=courseService.coursexqCourses(course);
		
		for(Course choose_stu:list) {
			course.setName(choose_stu.getName());
			course.setImg(choose_stu.getImg());
			course.setNumber(choose_stu.getNumber());
			course.setPrice(choose_stu.getPrice());
			course.setTip(choose_stu.getTip());
			course.setTeacher(choose_stu.getTeacher());
			course.setType(choose_stu.getType());
			course.setVideo(choose_stu.getVideo());
			
		}

		courseService.insertCourses(course);
		model.addAttribute("courses", list);
		response.setContentType("text/html; charset=UTF-8"); //转码
	    PrintWriter out = response.getWriter();
	    out.flush();
	    out.println("<script>");
	    out.println("alert('选课成功！可在已首页查看！记得按时学习哟！');");
	    out.println("history.back();");
	    out.println("</script>");
	    
		return "main_stu/coursexq_stu";
}catch(Exception e){
	e.printStackTrace();
	return "redirect:/student/index";
}
	}
	
	
	
	
	
	
	
	
	@RequestMapping("add")
	public String add(Course course) throws Exception{
		courseService.insertCourses(course);
		//return "redirect:"+"/a/all_course";
		return "success";
		
	}
	@RequestMapping("addcourse")
    public String addcourse(MultipartFile imgFile,MultipartFile courseFile,String teacher,Course course,HttpServletRequest request) throws Exception {
		String path="C:/eclipse/apache-tomcat-8.5.58-windows-x64/apache-tomcat-8.5.58/webapps/upimg/coursesimg";
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
        String fileName2 = courseFile.getOriginalFilename();
        //fileName = UUID.randomUUID().toString() + fileName.substring(fileName.lastIndexOf("."));

        fileName=course.getName()+fileName.substring(fileName.lastIndexOf("."));
        fileName2=course.getName()+fileName2.substring(fileName2.lastIndexOf("."));
        String path2="http://localhost:8080/upimg/coursesimg/"+date+"/"+fileName2;
		course.setVideo(path2);

        
        //4.2 文件上传 【关键代码】
        imgFile.transferTo(new File(file,fileName));
        courseFile.transferTo(new File(file,fileName2));
        //信息添加
        course.setTeacher(teacher);
      
        courseService.tea_insertCourses(course);
       // return "redirect:"+"/teacher/add";
        return "main_tea/index_tea";
        
    }
	
	@RequestMapping("delete")
	public String delete(Course course,int id) throws Exception{
		course.setId(id);
		courseService.deleteCourses(course);
		//return "redirect:"+"/a/all_course";
		return "main_tea/index_tea";
		
	}
	
	@RequestMapping("all_course")
	public String show_course(Model model,int i,HttpServletRequest request) throws Exception {
		Course course=new Course();
		List<Course> list=courseService.getCourses(course);
		int pagenum=list.size()/10;
		request.getSession().setAttribute("pagenum", pagenum);
		int toindex=i*10;
			if(toindex>list.size()) {
				toindex=list.size();
			}
			model.addAttribute("courses1",list.subList((i-1)*10, toindex));
			request.getSession().setAttribute("j", i);
		return "managerpage/courseshow";
		
	}
	//@RequestMapping("all_course")
//	public String show_course(Model model,Course course) throws Exception {
//
////		List<Course> list=courseService.getCourses(course);
////		model.addAttribute("courses",list);
////		return "show_teachesrs";
//		
//	}

	@RequestMapping("a")
	public String show() {

		return "success";
		
	}
	
	
	
	

}
