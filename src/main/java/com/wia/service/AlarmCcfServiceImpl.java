package com.wia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wia.dao.AlarmCcfDao;
import com.wia.domain.Alarm;

@Service
public class AlarmCcfServiceImpl implements AlarmCcfService{

	@Autowired
	private AlarmCcfDao alarmDao;

	@Override
	public List<Alarm> alarmListCcf1AlarmData() {
		return alarmDao.alarmListCcf1AlarmData();
	}

	@Override
	public List<Alarm> alarmListCcf2AlarmData() {
		return alarmDao.alarmListCcf2AlarmData();
	}

	@Override
	public Alarm alarmListCcf1AlarmPopup(Alarm alarm) {
		return alarmDao.alarmListCcf1AlarmPopup(alarm);
	}

	@Override
	public int alarmListCcfCommentChk(Alarm alarm) {
		return alarmDao.alarmListCcfCommentChk(alarm);
	}
	
	@Override
	public void alarmListCcfComment(Alarm alarm) {
		alarmDao.alarmListCcfComment(alarm);
	}
}
