package com.wia.service;

import java.util.List;

import com.wia.domain.AlarmList;

public interface AlarmListService {

	List<AlarmList> getAlarmList();
	
	void saveFileName(String acRegtime, String fileName);
	
	void updateComment(String acTag, String acComment);
}