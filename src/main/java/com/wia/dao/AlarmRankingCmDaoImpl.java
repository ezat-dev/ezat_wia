package com.wia.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.wia.domain.AlarmRanking;

@Repository
public class AlarmRankingCmDaoImpl implements AlarmRankingCmDao{
	
	@Resource(name="sessionSQLite")
	private SqlSession sqlSession;

	@Override
	public List<AlarmRanking> alarmRankingCmList(AlarmRanking alarmRanking) {
		return sqlSession.selectList("alarmRankingCm.alarmRankingCmList",alarmRanking);
	}

}
