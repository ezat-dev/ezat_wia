package com.wia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wia.dao.AlarmCmDao;
import com.wia.domain.Alarm;

@Service
public class AlarmCmServiceImpl implements AlarmCmService{

	@Autowired
	private AlarmCmDao alarmDao;

	@Override
	public List<Alarm> alarmListCm1AlarmData() {
		return alarmDao.alarmListCm1AlarmData();
	}

	@Override
	public List<Alarm> alarmListCm2AlarmData() {
		return alarmDao.alarmListCm2AlarmData();
	}
	
}
