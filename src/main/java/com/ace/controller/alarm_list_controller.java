package com.ace.controller;

import com.ace.domain.AlarmList;
import com.ace.service.AlarmListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/alarm_list")
public class alarm_list_controller {

    @Autowired
    private AlarmListService alarmListService; 
    

    @RequestMapping(method = RequestMethod.GET)
    public String index(Model model) {
        List<AlarmList> alarmList = alarmListService.getAlarmList(); 
        model.addAttribute("alarmList", alarmList); 
        return "/alarm_list/index.jsp"; // 
    }
    
    

    
    
    
    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    public String uploadFile(@RequestParam("file") MultipartFile file, @RequestParam("acRegtime") String acRegtime) {
        if (!file.isEmpty()) {
            try {
                // 파일 저장 경로 설정
                String filePath = "D:/uploads/" + file.getOriginalFilename();
                File destinationFile = new File(filePath);
                
                destinationFile.getParentFile().mkdirs();
                
                // 파일 저장
                file.transferTo(destinationFile);

                
                String fileName = file.getOriginalFilename();
                alarmListService.saveFileName(acRegtime, fileName); // DB에 파일 이름 저장
                
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return "/alarm_list/index.jsp"; 
    }
    
    
    @RequestMapping(value = "/updateComment", method = RequestMethod.POST)
    public ResponseEntity<Void> updateComment(@RequestBody AlarmList alarmList) {
        String acTag = alarmList.getAcTag();
        String acComment = alarmList.getAcComment();

        alarmListService.updateComment(acTag, acComment);
        
        return ResponseEntity.ok().build(); 
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
