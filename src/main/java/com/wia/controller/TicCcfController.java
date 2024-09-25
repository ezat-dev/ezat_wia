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
public class TicCcfController {

	//연속로
    @RequestMapping(value = "/ticCcf", method = RequestMethod.GET)
    public String ticCcf() {

        return "/ticCcf/ticCcf.jsp";
    }
    
    
    @RequestMapping(value= "/ticCcf/view", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> ticCcfView() throws UaException, InterruptedException, ExecutionException {
    	Map<String, Object> returnMap = new HashMap<String, Object>();

    	OpcDataMap opcDataMap = new OpcDataMap();
    	
    	returnMap = opcDataMap.getOpcDataListMap("WIA.CCF.TIC");
    	
    	return returnMap;    	
    }    
    
}
