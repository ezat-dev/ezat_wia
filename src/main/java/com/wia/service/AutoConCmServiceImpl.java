package com.wia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wia.dao.AutoConCmDao;
import com.wia.domain.AutoConCm;

@Service
public class AutoConCmServiceImpl implements AutoConCmService{

	@Autowired
	private AutoConCmDao autoConCmDao;

	@Override
	public List<AutoConCm> autoConCmData() {
		return autoConCmDao.autoConCmData();
	}


	
}
