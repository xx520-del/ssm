package com.ssm.service;

import java.util.List;

import com.ssm.entity.Data_sjk;

public interface DataService {
	public List<Data_sjk> findData(Data_sjk data_sjk) throws Exception;
	public List<Data_sjk> findNum(Data_sjk data_sjk) throws Exception;

}
