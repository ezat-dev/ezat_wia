package com.ace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/io_monitor_2")
public class io_monitor_controller_2 {

    @RequestMapping
    public String index() {

        return "/io_monitor_2/index.jsp";
    }
}
