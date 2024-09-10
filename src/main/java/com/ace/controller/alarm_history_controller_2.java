package com.ace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/alarm_history2")
public class alarm_history_controller_2 {

    @RequestMapping
    public String index() {

        return "/alarm_history2/index.jsp";
    }
}
