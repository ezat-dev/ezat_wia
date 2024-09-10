package com.ace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/alarm_history")
public class alarm_history_controller {

    @RequestMapping
    public String index() {

        return "/alarm_history/index.jsp";
    }
}
