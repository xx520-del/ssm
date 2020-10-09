package com.ssm.entity;

public class User {
	// 编号
	private int id;
	// 用户名
	private String username;
	// 密码
	private String password;
	// 身份
	private int type;
	//验证码
	private String yzm;
	

	public String getYzm() {
		return yzm;
	}
	public void setYzm(String yzm) {
		this.yzm = yzm;
	}
	

	/**
	 * 获得编号
	 * 
	 * @return
	 */
	
	public int getId() {
		return id;
	}
//
	/**
	 * 编号设定
	 * 
	 * @param id
	 */
	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}
}




//package com.ssm.entity;
//
///**
// * 
// * @author wangxiao
// *
// */
//public class User {
//	//编号
//	private String id;
//	//姓名
//	private String name;
//	//电话
//	private String phone;
//	/**
//	 * 获得编号
//	 * @return
//	 */
//	public String getId() {
//		return id;
//	}
//	/**
//	 * 编号设定
//	 * @param id
//	 */
//	public void setId(String id) {
//		this.id = id;
//	}
//	public String getName() {
//		return name;
//	}
//	public void setName(String name) {
//		this.name = name;
//	}
//	public String getPhone() {
//		return phone;
//	}
//	public void setPhone(String phone) {
//		this.phone = phone;
//	}
//}
