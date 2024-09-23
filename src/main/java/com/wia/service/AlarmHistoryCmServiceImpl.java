package com.wia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wia.dao.AlarmHistoryCmDao;
import com.wia.domain.AlarmHistory;

@Service
public class AlarmHistoryCmServiceImpl implements AlarmHistoryCmService{

	@Autowired
	private AlarmHistoryCmDao alarmHistoryCmDao;

	@Override
	public List<AlarmHistory> alarmHistoryCmList(AlarmHistory alarmHistory) {
		return alarmHistoryCmDao.alarmHistoryCmList(alarmHistory);
	}
	
}
