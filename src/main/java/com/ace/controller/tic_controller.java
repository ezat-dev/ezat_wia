package com.ace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("/tic")

public class tic_controller {
	
    @RequestMapping
    public String index() {

        return "/tic/index.jsp";
    }

}
