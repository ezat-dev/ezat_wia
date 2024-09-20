package com.wia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AlarmRankingCmController {

    @RequestMapping(value= "/alarmRankingCm", method = RequestMethod.GET)
    public String alarmRankingCm(Model model) {
    	

        return "/alarmRankingCm/alarmRankingCm.jsp";
    }
}
