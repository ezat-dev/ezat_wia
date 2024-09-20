package com.wia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AutoConCcfController {

    @RequestMapping(value= "/autoConCcf", method = RequestMethod.GET)
    public String autoConCcf(Model model) {
    	

        return "/autoConCcf/autoConCcf.jsp";
    }
}
