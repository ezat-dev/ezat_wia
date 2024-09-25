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
public class OverviewDataCmController {

	//연속로
    @RequestMapping(value = "/overviewDataCm", method = RequestMethod.GET)
    public String overviewDataCm() {

        return "/overviewDataCm/overviewDataCm.jsp";
    }
    
    @RequestMapping(value= "/overviewDataCm/view", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> overviewDataCmView() throws UaException, InterruptedException, ExecutionException {
    	Map<String, Object> returnMap = new HashMap<String, Object>();


    	OpcDataMap opcDataMap = new OpcDataMap();
    	
    	returnMap = opcDataMap.getOpcDataListMap("WIA.CM.OVERVIEW");    	

    	
    	return returnMap;    	
    }
        
}
