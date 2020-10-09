package com.ssm.mapper;
import java.util.List;

import com.ssm.entity.Course;
import com.ssm.entity.Teacher;

public interface CourseMapper {
	public int insertCourses(Course course) throws Exception;
	public int tea_insertCourses(Course course) throws Exception;
	
	public int muchCourses(Course course) throws Exception;
	
	public void saveCourses(Course course) throws Exception;
	
	public int deleteCourses(Course course) throws Exception;
	
	public List<Course> hotCourses(Course course) throws Exception;
	public List<Teacher> hotTeachers(Teacher teacher) throws Exception;
	public List<Course> yxCourses(Course usercourse) throws Exception;


	public List<Course> getCourses(Course course) throws Exception;
	
	public List<Course> selectCourses(Course course) throws Exception;
	
	public List<Course> coursexqCourses(Course course) throws Exception;



}
