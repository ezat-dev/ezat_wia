package com.wia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wia.dao.AutoConCcfDao;
import com.wia.domain.AutoConCcf;

@Service
public class AutoConCcfServiceImpl implements AutoConCcfService{

	@Autowired
	private AutoConCcfDao autoConCcfDao;

	@Override
	public List<AutoConCcf> autoConCcfData() {
		return autoConCcfDao.autoConCcfData();
	}


	
}
