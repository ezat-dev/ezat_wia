
package com.wia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProductCycleCmController {

	//연속로
    @RequestMapping(value = "/productCycleCm", method = RequestMethod.GET)
    public String productCycleCm() {

        return "/productCycleCm/productCycleCm.jsp";
    }
}
