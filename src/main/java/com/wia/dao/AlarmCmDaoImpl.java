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

	@Override
	public Alarm alarmListCm1AlarmPopup(Alarm alarm) {
		return sqlSession.selectOne("alarmCm.alarmListCm1AlarmPopup", alarm);
	}

	@Override
	public Alarm alarmListCm2AlarmPopup(Alarm alarm) {
		return sqlSession.selectOne("alarmCm.alarmListCm2AlarmPopup", alarm);
	}

	@Override
	public int alarmListCmCommentChk(Alarm alarm) {
		return sqlSession.selectOne("alarmCm.alarmListCmCommentChk", alarm);
	}

	@Override
	public void alarmListCmComment(Alarm alarm) {
		sqlSession.insert("alarmCm.alarmListCmComment", alarm);
	}

}
