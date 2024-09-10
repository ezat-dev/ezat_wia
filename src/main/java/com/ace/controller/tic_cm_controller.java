package com.ace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("/tic_cm")

public class tic_cm_controller {
	
    @RequestMapping
    public String index() {

        return "/tic_cm/index.jsp";
    }

}
