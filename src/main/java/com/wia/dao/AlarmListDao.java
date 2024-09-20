package com.wia.dao;

import java.util.List;

import com.wia.domain.AlarmList;

public interface AlarmListDao {

	List<AlarmList> getAlarmList();
	
	void updateFileName(String acRegtime, String fileName);
	
	void updateComment(String acTag, String acComment);

}
