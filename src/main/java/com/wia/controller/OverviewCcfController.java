package com.wia.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;

import org.eclipse.milo.opcua.stack.core.UaException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wia.util.OpcDataMap;

@Controller
public class OverviewCcfController {
	
	//연속로
    @RequestMapping(value = "/overviewCcf", method = RequestMethod.GET)
    public String overviewCcf() {

        return "/overviewCcf/overviewCcf.jsp";
    }
    
    @RequestMapping(value= "/overviewCcf/view", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> overviewCcfView() throws UaException, InterruptedException, ExecutionException {
    	Map<String, Object> returnMap = new HashMap<String, Object>();

    	OpcDataMap opcDataMap = new OpcDataMap();
    	
    	returnMap = opcDataMap.getOpcDataListMap("WIA.CCF.OVERVIEW");
    	
    	return returnMap;    	
    }
    
    
}
