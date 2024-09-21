package com.wia.service;

import java.util.List;

import com.wia.domain.Alarm;

public interface AlarmCcfService {

	List<Alarm> alarmListCcf1AlarmData();

	List<Alarm> alarmListCcf2AlarmData();

	Alarm alarmListCcf1AlarmPopup(Alarm alarm);

	int alarmListCcfCommentChk(Alarm alarm);
	
	void alarmListCcfComment(Alarm alarm);

}
