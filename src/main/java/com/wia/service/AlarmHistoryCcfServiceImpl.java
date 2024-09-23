package com.wia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wia.dao.AlarmHistoryCcfDao;
import com.wia.domain.AlarmHistory;

@Service
public class AlarmHistoryCcfServiceImpl implements AlarmHistoryCcfService{
	
	@Autowired
	private AlarmHistoryCcfDao alarmHistoryCcfDao;

	@Override
	public List<AlarmHistory> alarmHistoryCcfList(AlarmHistory alarmHistory) {
		return alarmHistoryCcfDao.alarmHistoryCcfList(alarmHistory);
	}

}
