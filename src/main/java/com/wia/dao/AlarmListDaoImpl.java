package com.wia.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.wia.domain.AlarmList;
@Repository
public class AlarmListDaoImpl implements AlarmListDao{

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<AlarmList> getAlarmList() {
		return sqlSession.selectList("alarmList.getAlarmList");
	}
	
	  @Override
	    public void updateFileName(String acRegtime, String fileName) {
	        Map<String, Object> params = new HashMap<>();
	        params.put("acRegtime", acRegtime);
	        params.put("fileName", fileName);
	        sqlSession.update("alarmList.updateFileName", params);
	    }
	  
	  @Override
	    public void updateComment(String acTag, String acComment) {
	        Map<String, Object> params = new HashMap<>();
	        params.put("acTag", acTag);
	        params.put("acComment", acComment);
	        sqlSession.update("alarmList.updateComment", params); // 매퍼 호출하기
	    }
}
