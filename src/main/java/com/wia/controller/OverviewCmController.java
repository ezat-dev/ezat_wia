package com.wia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class OverviewCmController {

	//연속로
    @RequestMapping(value = "/overviewCm", method = RequestMethod.GET)
    public String overviewCm() {

        return "/overviewCm/overviewCm.jsp";
    }
}
