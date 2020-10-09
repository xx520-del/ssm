package com.ssm.service;

import java.util.List;

import com.ssm.entity.Student;
import com.ssm.entity.Teacher;
import com.ssm.entity.Text;
import com.ssm.entity.Text2;
import com.ssm.entity.User;

public interface UserService {
	public List<User> findUsers(User user) throws Exception;
	public List<Student> getuserStudents(Student student) throws Exception;

	public List<User> registeUsers(User user) throws Exception;
	public List<Text> findStudents(Text text) throws Exception;
	public List<Text> findTeachers(Text2 text2) throws Exception;
	public int logintimeTeachers(Teacher teacher) throws Exception;
	public int logintimeStudents(Student student) throws Exception;
	public int insertlogintimeTeachers(Teacher teacher) throws Exception;

	public int insertlogintimeStudents(Student student) throws Exception;

	public int insertUsers(User user) throws Exception;
	
	public int saveUsers(User user) throws Exception;
	
	public int deleteUsers(User user) throws Exception;
	
	public List<User> getUser(User user) throws Exception;
}
