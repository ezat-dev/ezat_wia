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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import com.wia.domain.IoCmList;
import com.wia.service.IoCmListService;
import com.wia.util.OpcDataMap;

@Controller
public class IoMonitorCmController {

    @Autowired
    private IoCmListService ioCmListService;

    @RequestMapping(value = "/ioMonitorCm1", method = RequestMethod.GET)
    public String ioMonitorCm1(Model model) {
        return "/ioMonitorCm/ioMonitorCm1.jsp";
    }
    
    @RequestMapping(value= "/ioMonitorCm1/view", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> ioMonitorCm1View(
    		@RequestParam String opcGroup
    		) throws UaException, InterruptedException, ExecutionException {
    	Map<String, Object> returnMap = new HashMap<String, Object>();
    	
    	OpcDataMap opcDataMap = new OpcDataMap();
    	
    	returnMap = opcDataMap.getOpcDataListMap(opcGroup);    	
    	
    	return returnMap;    	
    }
    
    
    
    

    @RequestMapping(value = "/ioMonitorCm1/data", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> getIoCmList(
    		@RequestParam String dbGroup) {
        Map<String, Object> returnMap = new HashMap<String, Object>();

        IoCmList ioCmList1 = new IoCmList();
        ioCmList1.setDbGroup(dbGroup);
        
        List<IoCmList> ioCmList = ioCmListService.getIoCmList(ioCmList1);

        
        
        
        returnMap.put("data", ioCmList);



        return returnMap;
    }
}
