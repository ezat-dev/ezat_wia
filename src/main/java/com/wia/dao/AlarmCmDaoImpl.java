package com.wia.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.wia.domain.Alarm;

@Repository
public class AlarmCmDaoImpl implements AlarmCmDao{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<Alarm> alarmListCm1AlarmData() {
		return sqlSession.selectList("alarmCm.alarmListCm1AlarmData");
	}

	@Override
	public List<Alarm> alarmListCm2AlarmData() {
		return sqlSession.selectList("alarmCm.alarmListCm2AlarmData");
	}

}
