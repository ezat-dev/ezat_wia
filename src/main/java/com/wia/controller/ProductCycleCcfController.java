
package com.wia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProductCycleCcfController {

	//연속로
    @RequestMapping(value = "/productCycleCcf", method = RequestMethod.GET)
    public String productCycleCcf() {

        return "/productCycleCcf/productCycleCcf.jsp";
    }
}
