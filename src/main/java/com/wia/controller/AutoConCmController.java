package com.wia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AutoConCmController {

    @RequestMapping(value= "/autoConCm", method = RequestMethod.GET)
    public String autoConCm(Model model) {
    	

        return "/autoConCm/autoConCm.jsp";
    }
}
