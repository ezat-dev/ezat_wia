package com.ace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/alarm_ranking2")
public class alarm_ranking_controller_2 {

    @RequestMapping
    public String index() {

        return "/alarm_ranking2/index.jsp";
    }
}
