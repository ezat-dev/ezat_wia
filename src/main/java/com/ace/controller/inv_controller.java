package com.ace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/inv")
public class inv_controller {

    @RequestMapping
    public String index() {

        return "/inv/index.jsp";
    }
}
