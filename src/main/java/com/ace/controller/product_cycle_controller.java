
package com.ace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/product_cycle_cm")
public class product_cycle_controller {

    @RequestMapping
    public String index() {

        return "/product_cycle_cm/index.jsp";
    }
}
