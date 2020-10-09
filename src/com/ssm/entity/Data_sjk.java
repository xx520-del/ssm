package com.ssm.entity;

public class Data_sjk {
	
//数据库中的表的数量
	private int table_num;
	//数据库中各个表的名字
	
	private String table_name;
	//各个表的大小
	private String data_size;
	//各个表中数据的数量
	private int table_rows;

	
	public int getTable_num() {
		return table_num;
	}
	public void setTable_num(int table_num) {
		this.table_num=table_num;
	}
	
	
	public String getTable_name() {
		return table_name;
	}
	public void setTable_name(String table_name) {
		this.table_name=table_name;
	}
	
	public String getData_size() {
		return data_size;
	}
	public void setData_size(String data_size) {
		this.data_size=data_size;
	}
	
	public int getTable_rows() {
		return table_rows;
	}
	public void setTable_rows(int table_rows) {
		this.table_rows=table_rows;
	}
	
	
}
