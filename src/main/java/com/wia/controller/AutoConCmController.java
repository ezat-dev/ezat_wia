package com.wia.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;

import org.eclipse.milo.opcua.stack.core.UaException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wia.domain.AutoConCm;
import com.wia.service.AutoConCmService;
import com.wia.util.OpcDataMap;

@Controller
public class AutoConCmController {
	
	@Autowired
    private AutoConCmService autoConCmService; 

    @RequestMapping(value= "/autoConCm", method = RequestMethod.GET)
    public String autoConCm(Model model) {
    	

        return "/autoConCm/autoConCm.jsp";
    }
    
    
    @RequestMapping(value= "/autoConCm/view", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> autoConCmView() throws UaException, InterruptedException, ExecutionException {
    	Map<String, Object> returnMap = new HashMap<String, Object>();

    	OpcDataMap opcDataMap = new OpcDataMap();
    	
    	returnMap = opcDataMap.getOpcDataListMap("WIA.CM.AUTOCON");
    	
    	return returnMap;    	
    }
    
    
    @RequestMapping(value= "/autoConCm/autoConCmData", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> autoConCmData(){
    	Map<String, Object> rtnMap = new HashMap<String, Object>();
    	
    	List<AutoConCm> autoConDataList = autoConCmService.autoConCmData();
    	
    	rtnMap.put("data", autoConDataList);
    	
    	return rtnMap;
    }    
    
    
    
    
}
