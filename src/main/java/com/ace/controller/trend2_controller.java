package com.ace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("/trend2")

public class trend2_controller {
	
    @RequestMapping
    public String index() {

        return "/trend2/index.jsp";
    }

}
