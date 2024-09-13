package com.ace.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ace.service.TrendService;



@Controller
@RequestMapping("/trend1")

public class trend1_controller {
	
	 @Autowired
	    private TrendService trendService; // TrendService 주입

	    @RequestMapping
	    public String index() {
	        return "/trend1/index.jsp";
	    }

	    @RequestMapping("/getTrendData")
	    public String getTrendData(@RequestParam("sdate") String startDate,
	                                @RequestParam("edate") String endDate,
	                                Model model) {
	        List<List<Integer>> trendData = trendService.getTrendData(startDate, endDate);
	        model.addAttribute("trendData", trendData);
	        return "/trend1/index.jsp";
	    }

}
