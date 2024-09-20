package com.wia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class InvCcfController {

    @RequestMapping(value= "/invCcf", method = RequestMethod.GET)
    public String invCcf(Model model) {
    	

        return "/invCcf/invCcf.jsp";
    }
}
