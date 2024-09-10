package com.ace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/auto_con")
public class auto_con_controller {

    @RequestMapping
    public String index() {

        return "/auto_con/index.jsp";
    }
}
