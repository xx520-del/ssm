package com.ssm.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;

import com.ssm.entity.Student;
import com.ssm.entity.Teacher;
import com.ssm.entity.Text;
import com.ssm.entity.Text2;
import com.ssm.entity.User;
import com.ssm.mapper.UserMapper;
import com.ssm.service.UserService;

public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserMapper userMapper;

	@Override
	public List<Student> getuserStudents(Student student) throws Exception {
		return userMapper.getuserStudents(student);
	}

	@Override
	public List<User> findUsers(User user) throws Exception {
		return userMapper.findUsers(user);
	}
	@Override
	public List<Text> findStudents(Text text) throws Exception {
		return userMapper.findStudents(text);
	}
	@Override
	public List<Text> findTeachers(Text2 text2) throws Exception {
		return userMapper.findTeachers(text2);
	}
	@Override
	public List<User> registeUsers(User user) throws Exception {
		return userMapper.registeUsers(user);
	}

	@Override
	public int insertUsers(User user) throws Exception {
		//user.setId(UUID.randomUUID().toString().replace("-", ""));
		return userMapper.insertUsers(user);
	}

	@Override
	public int saveUsers(User user) throws Exception {
		return userMapper.saveUsers(user);
	}

	@Override
	public int deleteUsers(User user) throws Exception {
		return userMapper.deleteUsers(user);
	}

	@Override
	public List<User> getUser(User user) throws Exception {
		return userMapper.getUser(user);
	}
	
	@Override
	public int logintimeStudents(Student student) throws Exception {
		// TODO Auto-generated method stub
		String cdate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
		String date = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
		student.setLogintime(cdate);
		return userMapper.logintimeStudents(student);

	}
	@Override
	public int logintimeTeachers(Teacher teacher) throws Exception {
		// TODO Auto-generated method stub
		String cdate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
		String date = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
		teacher.setLogintime(cdate);
		return userMapper.logintimeTeachers(teacher);

	}
	@Override
	public int insertlogintimeStudents(Student student) throws Exception {

		String cdate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
		String date = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
		student.setCdate(cdate);
	
	
		student.setLogintime(cdate);
		//System.out.print(filename);
		return userMapper.insertlogintimeStudents(student);

	}
	@Override
	public int insertlogintimeTeachers(Teacher teacher) throws Exception {

		String cdate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
		String date = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
		teacher.setCdate(cdate);
		teacher.setLogintime(cdate);
		//System.out.print(filename);
		return userMapper.insertlogintimeTeachers(teacher);

	}
}






//package com.ssm.service.impl;
//
//import java.util.List;
//import java.util.UUID;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.util.StringUtils;
//
//import com.ssm.entity.User;
//import com.ssm.mapper.UserMapper;
//import com.ssm.service.UserService;
//
//public class UserServiceImpl implements UserService{
//	
//	@Autowired
//	private UserMapper userMapper;
//
//	@Override
//	public List<User> findUsers(User user) throws Exception {
//		return userMapper.findUsers(user);
//	}
//
//	@Override
//	public int insertUsers(User user) throws Exception {
//		user.setId(UUID.randomUUID().toString().replace("-", ""));
//		return userMapper.insertUsers(user);
//	}
//
//	@Override
//	public void saveUsers(User user) throws Exception {
//		if(StringUtils.isEmpty(user.getId())){
//			user.setId(UUID.randomUUID().toString().replace("-", ""));
//			userMapper.insertUsers(user);
//		}else{
//			userMapper.saveUsers(user);
//		}
//
//	}
//
//	@Override
//	public void deleteUsers(User user) throws Exception {
//		userMapper.deleteUsers(user);
//	}
//
//	@Override
//	public User getUser(User user) throws Exception {
//		return userMapper.getUser(user);
//	}
//}
