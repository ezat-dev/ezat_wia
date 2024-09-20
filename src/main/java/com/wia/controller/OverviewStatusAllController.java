package com.wia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class OverviewStatusAllController {

	//연속로
    @RequestMapping(value = "/overviewStatusAll", method = RequestMethod.GET)
    public String overviewStatusAll() {

        return "/overviewStatusAll/overviewStatusAll.jsp";
    }
}
