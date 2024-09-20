package com.wia.service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wia.dao.AlarmListDao;
import com.wia.domain.AlarmList;

@Service
public class AlarmListServiceImpl implements AlarmListService{

	@Autowired
	private AlarmListDao alarmListDao;

	@Override
	public List<AlarmList> getAlarmList() {
		return alarmListDao.getAlarmList();
	}
	
	@Override
	public void saveFileName(String acRegtime, String fileName) {
	    alarmListDao.updateFileName(acRegtime, fileName); 
	}
	
	@Override
    public void updateComment(String acTag, String acComment) {
        alarmListDao.updateComment(acTag, acComment);
    }
}
