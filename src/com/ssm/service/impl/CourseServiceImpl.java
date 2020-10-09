package com.ssm.service.impl;
import javax.servlet.http.HttpServletRequest;
import com.ssm.controller.CourseController;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import com.ssm.entity.Course;
import com.ssm.entity.Teacher;
import com.ssm.service.CourseService;
import com.ssm.mapper.CourseMapper;
public class CourseServiceImpl implements CourseService {
	@Autowired
	private CourseMapper courseMapper;

	@Override
	public int insertCourses(Course course) throws Exception {
		//String uuid = UUID.randomUUID().toString().replace("-", "").toUpperCase();
		//course.setId(uuid);
		String cdate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
		String date = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
		course.setCre_time(cdate);
		String path="http://localhost:8080/upimg/coursesimg/"+course.getName()+".jpg";
		course.setStu_much(0);
		course.setImg(path);
		
		return courseMapper.insertCourses(course);

	}
	@Override
	public int tea_insertCourses(Course course) throws Exception {
		//String uuid = UUID.randomUUID().toString().replace("-", "").toUpperCase();
		//course.setId(uuid);
		String cdate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
		String date = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
		course.setCre_time(cdate);
		String path="http://localhost:8080/upimg/coursesimg/"+date+"/"+course.getName()+".jpg";
		course.setStu_much(0);
		course.setImg(path);
		
		return courseMapper.tea_insertCourses(course);

	}
	@Override
	public int muchCourses(Course course) throws Exception {
		// TODO Auto-generated method stub
		return courseMapper.muchCourses(course);
	}
	@Override
	public void saveCourses(Course course) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public int deleteCourses(Course course) throws Exception {
		// TODO Auto-generated method stub
return courseMapper.deleteCourses(course);
	}
	@Override
	public List<Course> hotCourses(Course course) throws Exception {
		// TODO Auto-generated method stub
		return courseMapper.hotCourses(course);
	}
	@Override
	public List<Course> yxCourses(Course usercourse) throws Exception {
		// TODO Auto-generated method stub
		return courseMapper.yxCourses(usercourse);
	}
	@Override
	public List<Teacher> hotTeachers(Teacher teacher) throws Exception {
		// TODO Auto-generated method stub
		return courseMapper.hotTeachers(teacher);
	}
	@Override
	public List<Course> getCourses(Course course) throws Exception {
		// TODO Auto-generated method stub
		return courseMapper.getCourses(course);
	}
	
	@Override
	public List<Course> selectCourses(Course course) throws Exception {
		// TODO Auto-generated method stub
		return courseMapper.selectCourses(course);
	}
	@Override
	public List<Course> coursexqCourses(Course course) throws Exception {
		// TODO Auto-generated method stub
		return courseMapper.coursexqCourses(course);
	}

}
