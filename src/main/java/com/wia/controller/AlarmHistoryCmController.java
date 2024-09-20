package com.wia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AlarmHistoryCmController {

    @RequestMapping(value= "/alarmHistoryCm", method = RequestMethod.GET)
    public String ccf_alarm_list1(Model model) {
    	

        return "/alarmHistoryCm/alarmHistoryCm.jsp";
    }
}
