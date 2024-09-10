package com.ace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/overview_status")
public class overview_status_controller {

    @RequestMapping
    public String index() {

        return "/overview_status/index.jsp";
    }
}
