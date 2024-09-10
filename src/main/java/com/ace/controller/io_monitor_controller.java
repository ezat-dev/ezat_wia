package com.ace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/io_monitor")
public class io_monitor_controller {

    @RequestMapping
    public String index() {

        return "/io_monitor/index.jsp";
    }
}
