package com.wia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IoMonitorCcfController {

    @RequestMapping(value= "/ioMonitorCcf1", method = RequestMethod.GET)
    public String ioMonitorCcf1(Model model) {
    	

        return "/ioMonitorCcf/ioMonitorCcf1.jsp";
    }
}
