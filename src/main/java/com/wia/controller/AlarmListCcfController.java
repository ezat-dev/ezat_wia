package com.wia.controller;

import java.io.File;
import java.io.IOException;
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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wia.domain.Alarm;
import com.wia.service.AlarmCcfService;
import com.wia.util.ActionMap;

@Controller
public class AlarmListCcfController {

    @Autowired
    private AlarmCcfService alarmService; 
    

    @RequestMapping(value= "/alarmListCcf1", method = RequestMethod.GET)
    public String alarmListCcf1(Model model) {
    	

        return "/alarmListCcf/alarmListCcf1.jsp"; // 
    }
    
    @RequestMapping(value= "/alarmListCcf1/view", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> alarmListCcf1View() throws UaException, InterruptedException, ExecutionException {
    	Map<String, Object> returnMap = new HashMap<String, Object>();

    		ActionMap actionMap = new ActionMap();
    		NodeId rootNodeId = new NodeId(2, "WIA.ALARM.LIST11");
            
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
    
    
    
    @RequestMapping(value= "/alarmListCcf2", method = RequestMethod.GET)
    public String alarmListCcf2(Model model) {
    	
    	return "/alarmListCcf/alarmListCcf2.jsp"; // 
    }
    
    @RequestMapping(value= "/alarmListCcf2/view", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> alarmListCcf2View() throws UaException, InterruptedException, ExecutionException {
    	Map<String, Object> returnMap = new HashMap<String, Object>();

    		ActionMap actionMap = new ActionMap();
    		NodeId rootNodeId = new NodeId(2, "WIA.ALARM.LIST12");
            
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

    //알람 데이터 조회
    @RequestMapping(value= "/alarmListCcf1/alarmData", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> alarmListCcf1AlarmData(){
    	Map<String, Object> rtnMap = new HashMap<String, Object>();
    	
    	List<Alarm> alarmDataList = alarmService.alarmListCcf1AlarmData();
    	
    	rtnMap.put("data", alarmDataList);
    	
    	return rtnMap;
    }    
    
    //알람 데이터 조회
    @RequestMapping(value= "/alarmListCcf2/alarmData", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> alarmListCcf2AlarmData(){
    	Map<String, Object> rtnMap = new HashMap<String, Object>();
    	
    	List<Alarm> alarmDataList = alarmService.alarmListCcf2AlarmData();
    	
    	rtnMap.put("data", alarmDataList);
    	
    	return rtnMap;
    }    

    //알람 팝업창 데이터 조회
    @RequestMapping(value= "/alarmListCcf1/alarmPopup", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> alarmListCcf1AlarmPopup(
    		@RequestParam(required = false) String alarmGroup,
    		@RequestParam(required = false) String alarmClass){
    	Map<String, Object> rtnMap = new HashMap<String, Object>();
    	
    	Alarm alarm = new Alarm();
    	alarm.setAi_webdir(alarmGroup);
    	alarm.setAi_webclass(alarmClass);
    	
    	Alarm alarmPopupData = alarmService.alarmListCcf1AlarmPopup(alarm);
    	
    	rtnMap.put("data", alarmPopupData);
    	
    	return rtnMap;
    }    
    

    //알람 팝업창 데이터 조회
    @RequestMapping(value= "/alarmListCcf2/alarmPopup", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> alarmListCcf2AlarmPopup(
    		@RequestParam(required = false) String alarmGroup,
    		@RequestParam(required = false) String alarmClass){
    	Map<String, Object> rtnMap = new HashMap<String, Object>();
    	
    	Alarm alarm = new Alarm();
    	alarm.setAi_webdir(alarmGroup);
    	alarm.setAi_webclass(alarmClass);
    	
    	Alarm alarmPopupData = alarmService.alarmListCcf1AlarmPopup(alarm);
    	
    	rtnMap.put("data", alarmPopupData);
    	
    	return rtnMap;
    }    
    
    
    //알람팝업 파일 업로드
    @RequestMapping(value = "/alarmListCcf1/saveComment", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> alarmListCcf1SaveComment(@ModelAttribute Alarm alarm) {
    	
    	Map<String, Object> rtnMap = new HashMap<String, Object>();
    	alarm.setDbSaveGb("I");
    	
    	fileUpload(alarm);
        return rtnMap; 
    }
    
    @RequestMapping(value = "/alarmListCcf1/updateComment", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> alarmListCcf1UpdateComment(@ModelAttribute Alarm alarm) {
    	
    	Map<String, Object> rtnMap = new HashMap<String, Object>();
    	
    	//한번이라도 코멘트가 저장된적이 있는지
    	int saveChk = alarmService.alarmListCcfCommentChk(alarm);
    	
    	if(saveChk != 0) {        	
        	alarm.setDbSaveGb("U");
        	fileUpload(alarm);
        	rtnMap.put("data","updateComment");
    	}else {
    		rtnMap.put("data","noSaveComment");
    	}
    	
        return rtnMap; 
    }
    
    @RequestMapping(value = "/alarmListCcf2/saveComment", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> alarmListCcf2SaveComment(@ModelAttribute Alarm alarm) {
    	
    	Map<String, Object> rtnMap = new HashMap<String, Object>();
    	alarm.setDbSaveGb("I");
    	
    	fileUpload(alarm);
        return rtnMap; 
    }
    
    @RequestMapping(value = "/alarmListCcf2/updateComment", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> alarmListCcf2UpdateComment(@ModelAttribute Alarm alarm) {
    	
    	Map<String, Object> rtnMap = new HashMap<String, Object>();
    	
    	//한번이라도 코멘트가 저장된적이 있는지
    	int saveChk = alarmService.alarmListCcfCommentChk(alarm);
    	
    	if(saveChk != 0) {        	
        	alarm.setDbSaveGb("U");        	
        	fileUpload(alarm);
        	rtnMap.put("data","updateComment");
    	}else {
    		rtnMap.put("data","noSaveComment");
    	}
    	
        return rtnMap; 
    }
    
    
    public String fileNameReturn(String fileOriginName, String ai_plcaddr) {
    	String fileName = "";
    	
    	long time = System.currentTimeMillis();
    	int index = fileOriginName.lastIndexOf('.'); //파일명 뒤에서부터 .이라는 부분 찾기
    	String f_ext = fileOriginName.substring(index); //뒤에 확장자만
    	
   		fileName = ai_plcaddr+"_"+time+f_ext;
    	
    	
    	return fileName;
    }
    
    public void fileUpload(Alarm alarm) {
    	//파일이 없으면 0, 사진만 있으면 1, PDF만 있으면 2, 둘 다 있으면 3
    	int fileGb = 0;
    	String imgFileName = "";
    	String pdfFileName = "";
    	String imgFilePath = "D:/uploads/img/";
    	String pdfFilePath = "D:/uploads/pdf/";
    	
    	File imgFile = null;
    	File pdfFile = null;
    	
    	try {
	    	if(alarm.getFileInput().isEmpty() && alarm.getPdfInput().isEmpty()) {
	    		fileGb = 0;
	    	}else {
	    		if(!alarm.getFileInput().isEmpty() && !alarm.getPdfInput().isEmpty()){
	    			fileGb = 3;
	    			imgFileName = fileNameReturn(alarm.getFileInput().getOriginalFilename(), alarm.getAi_plcaddr());
	    			pdfFileName = fileNameReturn(alarm.getPdfInput().getOriginalFilename(), alarm.getAi_plcaddr());
	    			
	    			imgFile = new File(imgFilePath+imgFileName);
	    			pdfFile = new File(pdfFilePath+pdfFileName);
	    			
	    			imgFile.getParentFile().mkdirs();
	    			pdfFile.getParentFile().mkdirs();
	    			
	    			alarm.getFileInput().transferTo(imgFile);
	    			alarm.getPdfInput().transferTo(pdfFile);
	    			
	    		}else if(!alarm.getFileInput().isEmpty()) {
	    			fileGb = 1;
	    			imgFileName = fileNameReturn(alarm.getFileInput().getOriginalFilename(), alarm.getAi_plcaddr());
	    			
	    			imgFile = new File(imgFilePath+imgFileName);	    			
	    			imgFile.getParentFile().mkdirs();	    			
	    			alarm.getFileInput().transferTo(imgFile);
	    			
	    		}else if(!alarm.getPdfInput().isEmpty()) {
	    			fileGb = 2;
	    			pdfFileName = fileNameReturn(alarm.getPdfInput().getOriginalFilename(), alarm.getAi_plcaddr());
	    			
	    			
	    			pdfFile = new File(pdfFilePath+pdfFileName);	    			
	    			pdfFile.getParentFile().mkdirs();
	    			alarm.getPdfInput().transferTo(pdfFile);    			
	    		}
	    	}
	    	
			alarm.setAc_filename(imgFileName);
			alarm.setAc_pdf_filename(pdfFileName);
			alarm.setFileGb(fileGb);
			
			alarmService.alarmListCcfComment(alarm);
			
    	}catch(IOException io) {
    		io.printStackTrace();
    	}
    	
    }
    
}
