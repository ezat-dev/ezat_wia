package com.wia.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wia.domain.AlarmHistory;
import com.wia.service.AlarmHistoryCcfService;
import com.wia.service.AlarmHistoryCmService;

@Controller
public class AlarmHistoryCmController {
	

	@Autowired
	private AlarmHistoryCmService alarmHistoryCmService;	

    @RequestMapping(value= "/alarmHistoryCm", method = RequestMethod.GET)
    public String alarmHistoryCm(Model model) {
        return "/alarmHistoryCm/alarmHistoryCm.jsp";
    }
    

    @RequestMapping(value = "/alarmHistoryCm/list", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> alarmHistoryCmList(
    		@RequestParam(required = false) String sdateTime,
    		@RequestParam(required = false) String edateTime
    		){
    	Map<String, Object> rtnMap = new HashMap<String, Object>();
    	
    	AlarmHistory alarmHistory = new AlarmHistory();
    	alarmHistory.setSdateTime(sdateTime);
    	alarmHistory.setEdateTime(edateTime);
    	
    	List<AlarmHistory> alarmHistoryList = alarmHistoryCmService.alarmHistoryCmList(alarmHistory);
    	
    	rtnMap.put("last_page",1);
    	rtnMap.put("data", alarmHistoryList);
    	
    	return rtnMap;
    	
    }
    
}
