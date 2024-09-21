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
public class OverViewDataCcfController {

	//연속로
    @RequestMapping(value = "/overviewDataCcf", method = RequestMethod.GET)
    public String overviewDataCcf() {

        return "/overviewDataCcf/overviewDataCcf.jsp";
    }
    
    @RequestMapping(value= "/overviewDataCcf/view", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> overviewDataCcfView() throws UaException, InterruptedException, ExecutionException {
    	Map<String, Object> returnMap = new HashMap<String, Object>();


    	OpcDataMap opcDataMap = new OpcDataMap();
    	
    	returnMap = opcDataMap.getOpcDataListMap("WIA.CCF.OVERVIEW");    	

    	
    	return returnMap;    	
    }
    

}
