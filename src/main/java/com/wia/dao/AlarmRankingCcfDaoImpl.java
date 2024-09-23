package com.wia.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.wia.domain.AlarmRanking;

@Repository
public class AlarmRankingCcfDaoImpl implements AlarmRankingCcfDao{

	@Resource(name = "sessionSQLite")
	private SqlSession sqlSession;

	@Override
	public List<AlarmRanking> alarmRankingCcfList(AlarmRanking alarmRanking) {
		return sqlSession.selectList("alarmRankingCcf.alarmRankingCcfList", alarmRanking);
	}
	
}
