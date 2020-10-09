package com.ssm.entity;

public class Course{
	/*
	 * @wangxiao
	 * 
	 * 
	 */
	private int id;
	// ID
	private String name;
	// 姓名
	private String type;
	
	private String teacher;
	
	private int price;
	
	private String cre_time;
	private int number;
    private String img;
    private String video;
    
                  private String tip;
                  private int depid;
                  private int stu_much;

                  public int getNumber() {
              		return number;
              	}
              	 /**
              		 * @wangxiao
              		 * @param id
              		 */
           public void setNumber(int number) {
              this.number = number;
             }
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

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getTeacher() {
		return teacher;
	}

	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}

                  public int getPrice() {
		return price;
	}
                  public void setPrice(int price) {
		this.price = price;} 

                  
                  
                  public String getCre_time() {
		return cre_time;
	}

	public void setCre_time(String cre_time) {
		this.cre_time = cre_time;
	}

	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
	public String getVideo() {
		return video;
	}
	public void setVideo(String video) {
		this.video = video;
	}

                  public String getTip() {
		return tip;
	}
	public void setTip(String tip) {
		this.tip = tip;
	}

                  public int getDepid() {
		return depid;
	}
                  public void setDepid(int depid) {
		this.depid = depid; }

                  public int getStu_much() {
		return stu_much;
	}
                  public void setStu_much(int stu_much) {
		this.stu_much = stu_much; }


}
