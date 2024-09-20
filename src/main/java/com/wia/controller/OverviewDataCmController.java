package com.wia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class OverviewDataCmController {

	//연속로
    @RequestMapping(value = "/overviewDataCm", method = RequestMethod.GET)
    public String overviewDataCm() {

        return "/overviewDataCm/overviewDataCm.jsp";
    }
}
