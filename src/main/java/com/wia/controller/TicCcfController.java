package com.wia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TicCcfController {

	//연속로
    @RequestMapping(value = "/ticCcf", method = RequestMethod.GET)
    public String ticCcf() {

        return "/ticCcf/ticCcf.jsp";
    }
}
