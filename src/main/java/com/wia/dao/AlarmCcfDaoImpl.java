package com.wia.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.wia.domain.Alarm;

@Repository
public class AlarmCcfDaoImpl implements AlarmCcfDao{

	@Resource(name="session")
	private SqlSession sqlSession;
	
	@Override
	public List<Alarm> alarmListCcf1AlarmData() {
		return sqlSession.selectList("alarmCcf.alarmListCcf1AlarmData");
	}

	@Override
	public List<Alarm> alarmListCcf2AlarmData() {
		return sqlSession.selectList("alarmCcf.alarmListCcf2AlarmData");
	}

	@Override
	public Alarm alarmListCcf1AlarmPopup(Alarm alarm) {
		return sqlSession.selectOne("alarmCcf.alarmListCcf1AlarmPopup", alarm);
	}

	@Override
	public int alarmListCcfCommentChk(Alarm alarm) {
		return sqlSession.selectOne("alarmCcf.alarmListCcfCommentChk", alarm);
	}
	
	@Override
	public void alarmListCcfComment(Alarm alarm) {
		sqlSession.insert("alarmCcf.alarmListCcfComment", alarm);
	}

}
