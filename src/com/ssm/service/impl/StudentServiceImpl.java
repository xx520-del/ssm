package com.ssm.service.impl;
import javax.servlet.http.HttpServletRequest;
import com.ssm.controller.StudentController;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import com.ssm.entity.Student;
import com.ssm.entity.Text;
import com.ssm.entity.User;
import com.ssm.service.StudentService;
import com.ssm.mapper.StudentMapper;
public class StudentServiceImpl implements StudentService {
	@Autowired
	private StudentMapper studentMapper;
	
	@Override
	public List<Student> getuserStudents(Student student) throws Exception {
		return studentMapper.getuserStudents(student);
	}
	@Override
	public List<Text> findStudents(Text text) throws Exception {
		return studentMapper.findStudents(text);
	}

	@Override
	public int insertStudents(Student student) throws Exception {
		//String uuid = UUID.randomUUID().toString().replace("-", "").toUpperCase();
		//student.setId(uuid);
		String cdate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
		String date = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
		student.setCdate(cdate);
		//StudentController a=new StudentController();
	   // String filename = a.newfilename;
		
		//String path="C:\\SoftData\\javaEE\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\ssm\\WEB-INF\\upimg\\"+date+student.getIconurl();
		
//		int num=0;
//		++num;
//		String path="http://localhost:8080/wx/wx/"+date+"/"+num+".jpg";
//
//		student.setIconurl(path);
		String path="http://localhost:8080/upimg/stu_img/"+date+"/"+student.getName()+".jpg";
		student.setIconurl(path);
		student.setDepid(student.getId());
		//System.out.print(filename);
		return studentMapper.insertStudents(student);

	}

	@Override
	public int saveStudents(Student student) throws Exception {
		// TODO Auto-generated method stub
		String cdate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
		String date = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
		student.setCdate(cdate);
		return studentMapper.saveStudents(student);

	}
	@Override
	public int saveImg(Student student) throws Exception {
		// TODO Auto-generated method stub
		String cdate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
		String date = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
		student.setCdate(cdate);
		
		String path="http://localhost:8080/upimg/stu_img/"+date+"/"+student.getName()+".jpg";
		student.setIconurl(path);
		return studentMapper.saveImg(student);

	}

	@Override
	public void deleteStudents(Student student) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Student> getStudents(Student student) throws Exception {
		// TODO Auto-generated method stub
		return studentMapper.getStudents(student);
	}

}
