package com.ace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/overview_2_1")
public class overview_2_1_controller {

    @RequestMapping
    public String index() {

        return "/overview_2-1/index.jsp";
    }
}
