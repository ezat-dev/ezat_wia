package com.ace.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("/control_1")
public class control_1_controller {
	
	 @RequestMapping
	    public String index() {

	        return "/control_1/index.jsp";
	    }

}
