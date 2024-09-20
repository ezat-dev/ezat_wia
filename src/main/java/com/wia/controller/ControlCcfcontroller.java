package com.wia.controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ControlCcfcontroller {

    @RequestMapping(value= "/controlCcf1", method = RequestMethod.GET)
    public String controlCcf1(Model model) {
    	

        return "/controlCcf/control1Ccf.jsp";
    }
    
    @RequestMapping(value= "/controlCcf2", method = RequestMethod.GET)
    public String controlCcf2(Model model) {
    	
    	
    	return "/controlCcf/control1Ccf.jsp";
    }
}
