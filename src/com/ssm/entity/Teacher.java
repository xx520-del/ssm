package com.ssm.entity;

public class Teacher {
	/*
	 * @wangxiao
	 * 
	 * 
	 */
	private String id;
	// 姓名
	private String name;
	// 年龄
	private String sex;
	// 老师简介
	private String tip;
	// 号码
	private String phone;
	// 创建日期
	private String cdate;
	// 图标地址
	private String iconurl;
	private String logintime;
	private int depid;
	
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


	/**
	 * 
	 * @return
	 */
	public String getId() {
		return id;
	}
	 /**
		 * @wangxiao
		 * @param id
		 */
		public void setId(String id) {
			this.id = id;
		}
			
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getTip() {
		return tip;
	}

	public void setTip(String tip) {
		this.tip = tip;
	}

	public String getCdate() {
		return cdate;
	}

	public void setCdate(String cdate) {
		this.cdate = cdate;
	}

	public String getIconurl() {
		return iconurl;
	}

	public void setIconurl(String iconurl) {
		this.iconurl = iconurl;
	}

}
