package com.wia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wia.dao.AlarmRankingCcfDao;
import com.wia.domain.AlarmRanking;

@Service
public class AlarmRankingCcfServiceImpl implements AlarmRankingCcfService{

	@Autowired
	private AlarmRankingCcfDao alarmRankingCcfDao;

	@Override
	public List<AlarmRanking> alarmRankingCcfList(AlarmRanking alarmRanking) {
		return alarmRankingCcfDao.alarmRankingCcfList(alarmRanking);
	}
	
}
