package com.wia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TicCmController {

	//연속로
    @RequestMapping(value = "/ticCm", method = RequestMethod.GET)
    public String ticCm() {

        return "/ticCm/ticCm.jsp";
    }
}
