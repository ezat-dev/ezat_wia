package com.ace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/alarm_ranking")
public class alarm_ranking_controller {

    @RequestMapping
    public String index() {

        return "/alarm_ranking/index.jsp";
    }
}
