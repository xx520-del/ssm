package com.ssm.service.impl;
import javax.servlet.http.HttpServletRequest;
import com.ssm.controller.TeacherController;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;

import com.ssm.entity.Course;
import com.ssm.entity.Teacher;
import com.ssm.entity.User;
import com.ssm.service.TeacherService;
import com.ssm.mapper.TeacherMapper;
public class TeacherServiceImpl implements TeacherService {
	@Autowired
	private TeacherMapper teacherMapper;

	@Override
	public int insertTeachers(Teacher teacher) throws Exception {
		//String uuid = UUID.randomUUID().toString().replace("-", "").toUpperCase();
		//teacher.setId(uuid);
		String cdate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
		String date = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
		teacher.setCdate(cdate);
		//TeacherController a=new TeacherController();
	   // String filename = a.newfilename;
		
		//String path="C:\\SoftData\\javaEE\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\ssm\\WEB-INF\\upimg\\"+date+teacher.getIconurl();
		
		String path="http://localhost:8080/upimg/tea_img/"+date+"/"+teacher.getName()+".jpg";

		teacher.setIconurl(path);
		//System.out.print(filename);
		return teacherMapper.insertTeachers(teacher);

	}

	@Override
	public void saveTeachers(Teacher teacher) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteTeachers(Teacher teacher) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Teacher> getTeachers(Teacher teacher) throws Exception {
		// TODO Auto-generated method stub
		return teacherMapper.getTeachers(teacher);
	}
	@Override
	public List<User> getTeacherids(User user) throws Exception {
		// TODO Auto-generated method stub
		return teacherMapper.getTeacherids(user);
	}
	@Override
	public List<Teacher> hotTeachers(Teacher teacher) throws Exception {
		// TODO Auto-generated method stub
		return teacherMapper.hotTeachers(teacher);
	}
	@Override
	public List<Teacher> main_tea_xinxi(Teacher teacher) throws Exception {
		// TODO Auto-generated method stub
		return teacherMapper.main_tea_xinxi(teacher);
	}
	@Override
	public List<Course> main_tea_course(Course course) throws Exception {
		// TODO Auto-generated method stub
		return teacherMapper.main_tea_course(course);
	}
}
