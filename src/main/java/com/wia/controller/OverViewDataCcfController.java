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
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wia.util.ActionMap;

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

    		ActionMap actionMap = new ActionMap();
    		NodeId rootNodeId = new NodeId(2, "WIA.CCF.OVERVIEW");
            
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
	            String tagType = "";
	            
	            if("true".equals(value.getValue().getValue().toString())
	            		|| "false".equals(value.getValue().getValue().toString())) {
	            	tagType = "digital";
//	            	System.out.println("tagName : "+tagName+"// Boolean : "+value.getValue().getValue().toString());
	            }else {
//	            	System.out.println("tagName : "+tagName+"// Integer : "+value.getValue().getValue().toString());
	            	tagType = "analog";
	            }
	            
	            Map<String, Object> paramMap = new HashMap<String, Object>();
	            paramMap.put("tagName",tagName);
	            paramMap.put("tagType",tagType);
	            
	            
	            String action = actionMap.getReturnAction(paramMap);
	            
	            
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
    

}
