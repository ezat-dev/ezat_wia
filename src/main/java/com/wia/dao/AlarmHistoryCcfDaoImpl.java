package com.wia.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.wia.domain.AlarmHistory;

@Repository
public class AlarmHistoryCcfDaoImpl implements AlarmHistoryCcfDao{

	@Resource(name="sessionSQLite")
	private SqlSession sqlSession;
	
	@Override
	public List<AlarmHistory> alarmHistoryCcfList(AlarmHistory alarmHistory) {
		return sqlSession.selectList("alarmHistoryCcf.alarmHistoryCcfList", alarmHistory);
	}

}
