package com.ssm.service;

import java.util.List;

import com.ssm.entity.Student;
import com.ssm.entity.Text;

public interface StudentService {
	public int saveImg(Student student) throws Exception;
	
	public int insertStudents(Student student) throws Exception;
	
	public int saveStudents(Student student) throws Exception;
	
	public void deleteStudents(Student student) throws Exception;
	
	public List<Student> getStudents(Student student) throws Exception;

	public List<Text> findStudents(Text text) throws Exception;

	public List<Student> getuserStudents(Student student) throws Exception;

}
