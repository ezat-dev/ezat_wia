package com.wia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AlarmRankingCcfController {

    @RequestMapping(value= "/alarmRankingCcf", method = RequestMethod.GET)
    public String alarmRankingCcf(Model model) {
    	

        return "/alarmRankingCcf/alarmRankingCcf.jsp";
    }
}
