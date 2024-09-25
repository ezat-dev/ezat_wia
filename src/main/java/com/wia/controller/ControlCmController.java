package com.wia.controller;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;

import org.eclipse.milo.opcua.stack.core.UaException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wia.util.OpcDataMap;

@Controller
public class ControlCmController {

    @RequestMapping(value= "/controlCm", method = RequestMethod.GET)
    public String controlCcf1(Model model) {
    	

        return "/controlCm/controlCm.jsp";
    }
    
    

    @RequestMapping(value= "/controlCm1/view", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> controlCm1View() throws UaException, InterruptedException, ExecutionException {
    	Map<String, Object> returnMap = new HashMap<String, Object>();

    	OpcDataMap opcDataMap = new OpcDataMap();
    	
    	returnMap = opcDataMap.getOpcDataListMap("WIA.CM.CONTROL");    	
    	
    	return returnMap;    	
    }    
    
}
