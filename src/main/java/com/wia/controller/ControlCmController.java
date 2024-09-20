package com.wia.controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ControlCmController {

    @RequestMapping(value= "/controlCm", method = RequestMethod.GET)
    public String controlCcf1(Model model) {
    	

        return "/controlCm/controlCm.jsp";
    }
}
