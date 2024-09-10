package com.ace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("/trend1")

public class trend1_controller {
	
    @RequestMapping
    public String index() {

        return "/trend1/index.jsp";
    }

}
