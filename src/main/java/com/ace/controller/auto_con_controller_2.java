package com.ace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/auto_con_2")
public class auto_con_controller_2 {

    @RequestMapping
    public String index() {

        return "/auto_con_2/index.jsp";
    }
}
