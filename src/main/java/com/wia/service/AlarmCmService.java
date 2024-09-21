package com.wia.service;

import java.util.List;

import com.wia.domain.Alarm;

public interface AlarmCmService {

	List<Alarm> alarmListCm1AlarmData();

	List<Alarm> alarmListCm2AlarmData();

	Alarm alarmListCm1AlarmPopup(Alarm alarm);

	Alarm alarmListCm2AlarmPopup(Alarm alarm);

	int alarmListCmCommentChk(Alarm alarm);

	void alarmListCmComment(Alarm alarm);

}
