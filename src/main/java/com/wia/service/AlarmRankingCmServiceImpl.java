package com.wia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wia.dao.AlarmRankingCmDao;
import com.wia.domain.AlarmRanking;

@Service
public class AlarmRankingCmServiceImpl implements AlarmRankingCmService{
	
	@Autowired
	private AlarmRankingCmDao alarmRankingCmDao;

	@Override
	public List<AlarmRanking> alarmRankingCmList(AlarmRanking alarmRanking) {
		return alarmRankingCmDao.alarmRankingCmList(alarmRanking);
	}

}
