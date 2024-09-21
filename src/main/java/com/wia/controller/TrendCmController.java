package com.wia.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wia.domain.TrendCm;
import com.wia.service.TrendCmService;

@Controller
public class TrendCmController {

	@Autowired
	private TrendCmService trendCmService;
	
    @RequestMapping(value = "/trendCm", method = RequestMethod.GET)
    public String TrendCm() {
        return "/trendCm/trendCm.jsp";
    }
    

    @RequestMapping(value = "/trendCm/getData", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> getTrendData(
        @RequestParam(required = false) String sdateTime,
        @RequestParam(required = false) String edateTime) {

        Map<String, Object> rtnMap = new HashMap<>();

        TrendCm trendCm = new TrendCm();
        trendCm.setStartDate(sdateTime);
        trendCm.setEndDate(edateTime);

        List<TrendCm> trendList = trendCmService.getTrendData(trendCm);
        List<Object> tdateList = new ArrayList<>();

        List<Object> tf1PvList = new ArrayList<>();
        List<Object> tf2PvList = new ArrayList<>();
        List<Object> tf3PvList = new ArrayList<>();
        List<Object> rinsePvList = new ArrayList<>();
        List<Object> dippPvList = new ArrayList<>();
        List<Object> tf1SpList = new ArrayList<>();
        List<Object> tf2SpList = new ArrayList<>();
        List<Object> tf3SpList = new ArrayList<>();
        List<Object> rinseSpList = new ArrayList<>();
        List<Object> dippSpList = new ArrayList<>();

        for (TrendCm trend : trendList) {
            tdateList.add(trend.getTdate()); // LocalDateTime 그대로 추가

            List<Object> tf1Pv = new ArrayList<>();
            tf1Pv.add(trend.getTdate());
            tf1Pv.add(trend.getTf1_pv());

            List<Object> tf2Pv = new ArrayList<>();
            tf2Pv.add(trend.getTdate());
            tf2Pv.add(trend.getTf2_pv());

            List<Object> tf3Pv = new ArrayList<>();
            tf3Pv.add(trend.getTdate());
            tf3Pv.add(trend.getTf3_pv());

            List<Object> rinsePv = new ArrayList<>();
            rinsePv.add(trend.getTdate());
            rinsePv.add(trend.getRinse_pv());

            List<Object> dippPv = new ArrayList<>();
            dippPv.add(trend.getTdate());
            dippPv.add(trend.getDipp_pv());

            List<Object> tf1Sp = new ArrayList<>();
            tf1Sp.add(trend.getTdate());
            tf1Sp.add(trend.getTf1_sp());

            List<Object> tf2Sp = new ArrayList<>();
            tf2Sp.add(trend.getTdate());
            tf2Sp.add(trend.getTf2_sp());

            List<Object> tf3Sp = new ArrayList<>();
            tf3Sp.add(trend.getTdate());
            tf3Sp.add(trend.getTf3_sp());

            List<Object> rinseSp = new ArrayList<>();
            rinseSp.add(trend.getTdate());
            rinseSp.add(trend.getRinse_sp());

            List<Object> dippSp = new ArrayList<>();
            dippSp.add(trend.getTdate());
            dippSp.add(trend.getDipp_sp());

            tf1PvList.add(tf1Pv);
            tf2PvList.add(tf2Pv);
            tf3PvList.add(tf3Pv);
            rinsePvList.add(rinsePv);
            dippPvList.add(dippPv);
            tf1SpList.add(tf1Sp);
            tf2SpList.add(tf2Sp);
            tf3SpList.add(tf3Sp);
            rinseSpList.add(rinseSp);
            dippSpList.add(dippSp);
        }

        Map<String, Object> tf1PvMap = new HashMap<>();
        Map<String, Object> tf2PvMap = new HashMap<>();
        Map<String, Object> tf3PvMap = new HashMap<>();
        Map<String, Object> rinsePvMap = new HashMap<>();
        Map<String, Object> dippPvMap = new HashMap<>();
        Map<String, Object> tf1SpMap = new HashMap<>();
        Map<String, Object> tf2SpMap = new HashMap<>();
        Map<String, Object> tf3SpMap = new HashMap<>();
        Map<String, Object> rinseSpMap = new HashMap<>();
        Map<String, Object> dippSpMap = new HashMap<>();

        tf1PvMap.put("name", "tf1Pv");
        tf1PvMap.put("color", "#FF0000");
        tf1PvMap.put("data", tf1PvList);

        tf2PvMap.put("name", "tf2Pv");
        tf2PvMap.put("color", "#F0F0F0");
        tf2PvMap.put("data", tf2PvList);

        tf3PvMap.put("name", "tf3Pv");
        tf3PvMap.put("color", "#ABF200");
        tf3PvMap.put("data", tf3PvList);

        rinsePvMap.put("name", "rinsePv");
        rinsePvMap.put("color", "#FFB2D9");
        rinsePvMap.put("data", rinsePvList);

        dippPvMap.put("name", "dippPv");
        dippPvMap.put("color", "#FFC19E");
        dippPvMap.put("data", dippPvList);

        tf1SpMap.put("name", "tf1Sp");
        tf1SpMap.put("color", "#F15F5F");
        tf1SpMap.put("data", tf1SpList);

        tf2SpMap.put("name", "tf2Sp");
        tf2SpMap.put("color", "#5F00FF");
        tf2SpMap.put("data", tf2SpList);

        tf3SpMap.put("name", "tf3Sp");
        tf3SpMap.put("color", "#5CD1E5");
        tf3SpMap.put("data", tf3SpList);

        rinseSpMap.put("name", "rinseSp");
        rinseSpMap.put("color", "#2F9D27");
        rinseSpMap.put("data", rinseSpList);

        dippSpMap.put("name", "dippSp");
        dippSpMap.put("color", "#FF00FF");
        dippSpMap.put("data", dippSpList);

        rtnMap.put("tdate", tdateList);
        rtnMap.put("tf1Pv", tf1PvMap);
        rtnMap.put("tf2Pv", tf2PvMap);
        rtnMap.put("tf3Pv", tf3PvMap);
        rtnMap.put("rinsePv", rinsePvMap);
        rtnMap.put("dippPv", dippPvMap);
        
/*
        rtnMap.put("tf1Sp", tf1SpMap);
        rtnMap.put("tf2Sp", tf2SpMap);
        rtnMap.put("tf3Sp", tf3SpMap);
        rtnMap.put("rinseSp", rinseSpMap);
        rtnMap.put("dippSp", dippSpMap);
*/
        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("data", rtnMap);

        return resultMap;
    }
    
    
}
