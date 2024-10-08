package com.wia.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;

import org.eclipse.milo.opcua.stack.core.UaException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wia.domain.Alarm;
import com.wia.service.AlarmCmService;
import com.wia.util.OpcDataMap;

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

    	OpcDataMap opcDataMap = new OpcDataMap();
    	
    	returnMap = opcDataMap.getOpcDataListMap("WIA.ALARM.LIST21");
    	
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

    	OpcDataMap opcDataMap = new OpcDataMap();
    	
    	returnMap = opcDataMap.getOpcDataListMap("WIA.ALARM.LIST22");
    	
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

    //알람 팝업창 데이터 조회
    @RequestMapping(value= "/alarmListCm1/alarmPopup", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> alarmListCm1AlarmPopup(
    		@RequestParam(required = false) String alarmGroup,
    		@RequestParam(required = false) String alarmClass){
    	Map<String, Object> rtnMap = new HashMap<String, Object>();
    	
    	Alarm alarm = new Alarm();
    	alarm.setAi_webdir(alarmGroup);
    	alarm.setAi_webclass(alarmClass);
    	
    	Alarm alarmPopupData = alarmCmService.alarmListCm1AlarmPopup(alarm);
    	
    	rtnMap.put("data", alarmPopupData);
    	
    	return rtnMap;
    }    
    

    //알람 팝업창 데이터 조회
    @RequestMapping(value= "/alarmListCm2/alarmPopup", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> alarmListCm2AlarmPopup(
    		@RequestParam(required = false) String alarmGroup,
    		@RequestParam(required = false) String alarmClass){
    	Map<String, Object> rtnMap = new HashMap<String, Object>();
    	
    	Alarm alarm = new Alarm();
    	alarm.setAi_webdir(alarmGroup);
    	alarm.setAi_webclass(alarmClass);
    	
    	Alarm alarmPopupData = alarmCmService.alarmListCm1AlarmPopup(alarm);
    	
    	rtnMap.put("data", alarmPopupData);
    	
    	return rtnMap;
    }    
    
    
    //알람팝업 파일 업로드
    @RequestMapping(value = "/alarmListCm1/saveComment", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> alarmListCm1SaveComment(@ModelAttribute Alarm alarm) {
    	
    	Map<String, Object> rtnMap = new HashMap<String, Object>();
    	alarm.setDbSaveGb("I");
    	
    	fileUpload(alarm);
        return rtnMap; 
    }
    
    @RequestMapping(value = "/alarmListCm1/updateComment", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> alarmListCm1UpdateComment(@ModelAttribute Alarm alarm) {
    	
    	Map<String, Object> rtnMap = new HashMap<String, Object>();
    	
    	//한번이라도 코멘트가 저장된적이 있는지
    	int saveChk = alarmCmService.alarmListCmCommentChk(alarm);
    	
    	if(saveChk != 0) {        	
        	alarm.setDbSaveGb("U");
        	fileUpload(alarm);
        	rtnMap.put("data","updateComment");
    	}else {
    		rtnMap.put("data","noSaveComment");
    	}
    	
        return rtnMap; 
    }
    
    @RequestMapping(value = "/alarmListCm2/saveComment", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> alarmListCm2SaveComment(@ModelAttribute Alarm alarm) {
    	
    	Map<String, Object> rtnMap = new HashMap<String, Object>();
    	alarm.setDbSaveGb("I");
    	
    	fileUpload(alarm);
        return rtnMap; 
    }
    
    @RequestMapping(value = "/alarmListCm2/updateComment", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> alarmListCm2UpdateComment(@ModelAttribute Alarm alarm) {
    	
    	Map<String, Object> rtnMap = new HashMap<String, Object>();
    	
    	//한번이라도 코멘트가 저장된적이 있는지
    	int saveChk = alarmCmService.alarmListCmCommentChk(alarm);
    	
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
			
			alarmCmService.alarmListCmComment(alarm);
			
    	}catch(IOException io) {
    		io.printStackTrace();
    	}
    	
    }

}
