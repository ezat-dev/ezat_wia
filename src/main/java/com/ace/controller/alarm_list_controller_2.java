package com.ace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/alarm_list2")
public class alarm_list_controller_2 {

    @RequestMapping
    public String index() {

        return "/alarm_list2/index.jsp";
    }
}
