package com.ace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/overview_1")
public class overview_1_controller {

    @RequestMapping
    public String index() {

        return "/overview_1/index.jsp";
    }
}
