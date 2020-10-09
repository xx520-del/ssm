package com.ssm.entity;

public class Text{
	/*
	 * @wangxiao
	 * 
	 * 
	 */
	private int id;
	// ID
	private String name;
	// 姓名
	private String sex;
	// 性别
	private String phone;
	// 电话
	private String iconurl;
	// 头像
	private String cdate;
	
	//上次登录时间
	private String logintime;
	
	//外键depid
	private int depid;

	/**
	 * 
	 * @return
	 */
	public int getId() {
		return id;
	}
	 /**
		 * @wangxiao
		 * @param id
		 */
		public void setId(int id) {
			this.id = id;
		}
			
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getIconurl() {
		return iconurl;
	}

	public void setIconurl(String iconurl) {
		this.iconurl = iconurl;
	}
	
	public String getCdate() {
		return cdate;
	}

	public void setCdate(String cdate) {
		this.cdate = cdate;
	}

	public String getLogintime() {
		return logintime;
	}

	public void setLogintime(String logintime) {
		this.logintime = logintime;
	}

	public int getDepid() {
		return depid;
	}

	public void setDepid(int depid) {
		this.depid = depid;
	}

}
