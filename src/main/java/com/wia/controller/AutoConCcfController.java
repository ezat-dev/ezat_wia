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

import com.wia.domain.AutoConCcf;
import com.wia.service.AutoConCcfService;
import com.wia.util.OpcDataMap;

@Controller
public class AutoConCcfController {
	
	@Autowired
    private AutoConCcfService autoConCcfService; 

    @RequestMapping(value= "/autoConCcf", method = RequestMethod.GET)
    public String autoConCcf(Model model) {
    	

        return "/autoConCcf/autoConCcf.jsp";
    }
    
    
    @RequestMapping(value= "/autoConCcf/view", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> autoConCcfView() throws UaException, InterruptedException, ExecutionException {
    	Map<String, Object> returnMap = new HashMap<String, Object>();

    	OpcDataMap opcDataMap = new OpcDataMap();
    	
    	returnMap = opcDataMap.getOpcDataListMap("WIA.CCF.AUTOCON");
    	
    	return returnMap;    	
    }
    
    
    @RequestMapping(value= "/autoConCcf/autoConCcfData", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> autoConCcfData(){
    	Map<String, Object> rtnMap = new HashMap<String, Object>();
    	
    	List<AutoConCcf> autoConDataList = autoConCcfService.autoConCcfData();
    	
    	rtnMap.put("data", autoConDataList);
    	
    	return rtnMap;
    }    
    
    
    
    
}
