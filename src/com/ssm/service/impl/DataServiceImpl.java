package com.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import com.ssm.entity.Data_sjk;
import com.ssm.mapper.DataMapper;
import com.ssm.service.DataService;

public class DataServiceImpl implements DataService {
	@Autowired
	private DataMapper dataMapper;
	@Override
	public List<Data_sjk> findData(Data_sjk data_sjk) throws Exception {
		return dataMapper.findData(data_sjk);
	}
	@Override
	public List<Data_sjk> findNum(Data_sjk data_sjk) throws Exception {
		return dataMapper.findNum(data_sjk);
	}
}
