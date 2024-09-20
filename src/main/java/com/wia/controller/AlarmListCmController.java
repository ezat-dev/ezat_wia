package com.wia.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutionException;
import java.util.stream.Collectors;

import org.eclipse.milo.opcua.stack.core.UaException;
import org.eclipse.milo.opcua.stack.core.types.builtin.DataValue;
import org.eclipse.milo.opcua.stack.core.types.builtin.NodeId;
import org.eclipse.milo.opcua.stack.core.types.builtin.unsigned.Unsigned;
import org.eclipse.milo.opcua.stack.core.types.enumerated.BrowseDirection;
import org.eclipse.milo.opcua.stack.core.types.enumerated.TimestampsToReturn;
import org.eclipse.milo.opcua.stack.core.types.structured.BrowseDescription;
import org.eclipse.milo.opcua.stack.core.types.structured.BrowseResult;
import org.eclipse.milo.opcua.stack.core.types.structured.ReferenceDescription;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wia.domain.Alarm;
import com.wia.service.AlarmCmService;
import com.wia.util.ActionMap;

@Controller
public class AlarmListCmController {

    @Autowired
    private AlarmCmService alarmCmService; 
    

    @RequestMapping(value= "/alarmListCm1", method = RequestMethod.GET)
    public String alarmListCm1(Model model) {
    	

        return "/alarmListCm/alarmListCm1.jsp"; // 
    }
    
    @RequestMapping(value= "/alarmListCm1/view", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> alarmListCm1View() throws UaException, InterruptedException, ExecutionException {
    	Map<String, Object> returnMap = new HashMap<String, Object>();

    		ActionMap actionMap = new ActionMap();
    		NodeId rootNodeId = new NodeId(2, "WIA.ALARM.LIST21");
            
            BrowseDescription browseDescription = new BrowseDescription(
            		rootNodeId, BrowseDirection.Forward, null, true, Unsigned.uint(0xFFFF), Unsigned.uint(0xFFFF));

            BrowseResult browseResult = MainController.client.browse(browseDescription).get();
                
                // 하위 노드 출력
            int tagCount = browseResult.getReferences().length;
            
            List<NodeId> nodeIds = new ArrayList<NodeId>();
            List<String> referenceList = new ArrayList<String>();
            
            for(int i=0; i<tagCount; i++) {
            	ReferenceDescription reference = browseResult.getReferences()[i];
            	String getName = reference.getBrowseName().getName().toString();
            	if(!"BaseObjectType".equals(getName)) {
            		referenceList.add(getName);
            		NodeId nodeId = new NodeId(2, reference.getNodeId().getIdentifier().toString());
            		nodeIds.add(nodeId);
            	}
            }
            
            
	        // 여러 노드 읽기
	        List<CompletableFuture<DataValue>> futures = nodeIds.stream()
	            .map(nodeId -> MainController.client.readValue(0, TimestampsToReturn.Both, nodeId))
	            .collect(Collectors.toList());    	
	
	        // CompletableFuture를 사용하여 모든 값을 한꺼번에 대기
	        CompletableFuture<Void> allFutures = CompletableFuture.allOf(futures.toArray(new CompletableFuture[0]));
	        allFutures.get();
	        

	        
	        List<Map<String, Object>> dataList = new ArrayList<Map<String, Object>>();

	        for (int i = 0; i < nodeIds.size(); i++) {
		        Map<String, Object> multiValues = new HashMap<String, Object>();	        	
	            DataValue value = futures.get(i).get();
	            
	            String tagName = referenceList.get(i);
	            
	            
	            String action = actionMap.getReturnAction(tagName);
	            
	            //현재 태그의 값, 구분
	            Map<String ,Object> dataMap = new HashMap<String, Object>();
	            dataMap.put("value", value.getValue().getValue());
	            dataMap.put("action", action);
	            
	            
	            multiValues.put(tagName, dataMap);
	            dataList.add(multiValues);
	        }
	        
	        returnMap.put("multiValues", dataList);
    	
    	return returnMap;    	
    }
    
    
    
    @RequestMapping(value= "/alarmListCm2", method = RequestMethod.GET)
    public String alarmListCm2(Model model) {
    	
    	return "/alarmListCm/alarmListCm2.jsp"; // 
    }
    
    @RequestMapping(value= "/alarmListCm2/view", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> alarmListCm2View() throws UaException, InterruptedException, ExecutionException {
    	Map<String, Object> returnMap = new HashMap<String, Object>();

    		ActionMap actionMap = new ActionMap();
    		NodeId rootNodeId = new NodeId(2, "WIA.ALARM.LIST22");
            
            BrowseDescription browseDescription = new BrowseDescription(
            		rootNodeId, BrowseDirection.Forward, null, true, Unsigned.uint(0xFFFF), Unsigned.uint(0xFFFF));

            BrowseResult browseResult = MainController.client.browse(browseDescription).get();
                
                // 하위 노드 출력
            int tagCount = browseResult.getReferences().length;
            
            List<NodeId> nodeIds = new ArrayList<NodeId>();
            List<String> referenceList = new ArrayList<String>();
            
            for(int i=0; i<tagCount; i++) {
            	ReferenceDescription reference = browseResult.getReferences()[i];
            	String getName = reference.getBrowseName().getName().toString();
            	if(!"BaseObjectType".equals(getName)) {
            		referenceList.add(getName);
            		NodeId nodeId = new NodeId(2, reference.getNodeId().getIdentifier().toString());
            		nodeIds.add(nodeId);
            	}
            }
            
            
	        // 여러 노드 읽기
	        List<CompletableFuture<DataValue>> futures = nodeIds.stream()
	            .map(nodeId -> MainController.client.readValue(0, TimestampsToReturn.Both, nodeId))
	            .collect(Collectors.toList());    	
	
	        // CompletableFuture를 사용하여 모든 값을 한꺼번에 대기
	        CompletableFuture<Void> allFutures = CompletableFuture.allOf(futures.toArray(new CompletableFuture[0]));
	        allFutures.get();
	        

	        
	        List<Map<String, Object>> dataList = new ArrayList<Map<String, Object>>();

	        for (int i = 0; i < nodeIds.size(); i++) {
		        Map<String, Object> multiValues = new HashMap<String, Object>();	        	
	            DataValue value = futures.get(i).get();
	            
	            String tagName = referenceList.get(i);
	            
	            
	            String action = actionMap.getReturnAction(tagName);
	            
	            //현재 태그의 값, 구분
	            Map<String ,Object> dataMap = new HashMap<String, Object>();
	            dataMap.put("value", value.getValue().getValue());
	            dataMap.put("action", action);
	            
	            
	            multiValues.put(tagName, dataMap);
	            dataList.add(multiValues);
	        }
	        
	        returnMap.put("multiValues", dataList);
    	
    	return returnMap;    	
    }

    @RequestMapping(value= "/alarmListCm1/alarmData", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> alarmListCm1AlarmData(){
    	Map<String, Object> rtnMap = new HashMap<String, Object>();
    	
    	List<Alarm> alarmDataList = alarmCmService.alarmListCm1AlarmData();
    	
    	rtnMap.put("data", alarmDataList);
    	
    	return rtnMap;
    }    
    
    
    @RequestMapping(value= "/alarmListCm2/alarmData", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> alarmListCm2AlarmData(){
    	Map<String, Object> rtnMap = new HashMap<String, Object>();
    	
    	List<Alarm> alarmDataList = alarmCmService.alarmListCm2AlarmData();
    	
    	rtnMap.put("data", alarmDataList);
    	
    	return rtnMap;
    }    

}
