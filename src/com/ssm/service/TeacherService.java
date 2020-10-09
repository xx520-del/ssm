package com.ssm.service;

import java.util.List;

import com.ssm.entity.Course;
import com.ssm.entity.Teacher;
import com.ssm.entity.User;

public interface TeacherService {
	
	public int insertTeachers(Teacher teacher) throws Exception;
	
	public void saveTeachers(Teacher teacher) throws Exception;
	
	public void deleteTeachers(Teacher teacher) throws Exception;
	
	public List<Teacher> getTeachers(Teacher teacher) throws Exception;
	
	public List<Teacher> hotTeachers(Teacher teacher) throws Exception;
	
	public List<User> getTeacherids(User user) throws Exception;
	public List<Teacher> main_tea_xinxi(Teacher teacher) throws Exception;
	public List<Course> main_tea_course(Course course) throws Exception;



}
