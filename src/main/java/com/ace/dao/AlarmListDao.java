package com.ace.dao;

import java.util.List;

import com.ace.domain.AlarmList;

public interface AlarmListDao {

	List<AlarmList> getAlarmList();
	
	void updateFileName(String acRegtime, String fileName);
	
	void updateComment(String acTag, String acComment);

}
