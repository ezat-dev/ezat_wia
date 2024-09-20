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

import com.wia.domain.TrendCcf;
import com.wia.service.TrendCcfService;

@Controller
public class TrendCcfController {
    
    @Autowired
    private TrendCcfService trendCcfService;

    @RequestMapping(value = "/trendCcf", method = RequestMethod.GET)
    public String TrendCcf() {
        return "/trendCcf/trendCcf.jsp";
    }

    @RequestMapping(value = "/trendCcf/getData", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> TrendCcfGetData(
        @RequestParam(required = false) String sdateTime,
        @RequestParam(required = false) String edateTime) {

        Map<String, Object> rtnMap = new HashMap<>();

        TrendCcf trendCcf = new TrendCcf();
        trendCcf.setStartDate(sdateTime);
        trendCcf.setEndDate(edateTime);

        List<TrendCcf> trendList = trendCcfService.getTrendData(trendCcf);
        List<Object> tdateList = new ArrayList<>();

        List<Object> prePvList = new ArrayList<>();
        List<Object> heatPvList = new ArrayList<>();
        List<Object> qf1PvList = new ArrayList<>();
        List<Object> qf2PvList = new ArrayList<>();
        List<Object> diffPvList = new ArrayList<>();
        List<Object> crack1PvList = new ArrayList<>();
        List<Object> crack2PvList = new ArrayList<>();
        List<Object> oilPvList = new ArrayList<>();
        List<Object> qfCpPvList = new ArrayList<>();
        List<Object> diffCpPvList = new ArrayList<>();
        List<Object> crackCpPvList = new ArrayList<>();
        List<Object> preSpList = new ArrayList<>();
        List<Object> heatSpList = new ArrayList<>();
        List<Object> qf1SpList = new ArrayList<>();
        List<Object> qf2SpList = new ArrayList<>();
        List<Object> diffSpList = new ArrayList<>();
        List<Object> crack1SpList = new ArrayList<>();
        List<Object> crack2SpList = new ArrayList<>();
        List<Object> oilSpList = new ArrayList<>();
        List<Object> qfCpSpList = new ArrayList<>();
        List<Object> diffCpSpList = new ArrayList<>();
        List<Object> crackCpSpList = new ArrayList<>();

        for (TrendCcf trend : trendList) {
            tdateList.add(trend.getTdate());

            List<Object> prePv = new ArrayList<>();
            prePv.add(trend.getTdate());
            prePv.add(trend.getPre_pv());

            List<Object> heatPv = new ArrayList<>();
            heatPv.add(trend.getTdate());
            heatPv.add(trend.getHeat_pv());

            List<Object> qf1Pv = new ArrayList<>();
            qf1Pv.add(trend.getTdate());
            qf1Pv.add(trend.getQf1_pv());

            List<Object> qf2Pv = new ArrayList<>();
            qf2Pv.add(trend.getTdate());
            qf2Pv.add(trend.getQf2_pv());

            List<Object> diffPv = new ArrayList<>();
            diffPv.add(trend.getTdate());
            diffPv.add(trend.getDiff_pv());

            List<Object> crack1Pv = new ArrayList<>();
            crack1Pv.add(trend.getTdate());
            crack1Pv.add(trend.getCrack1_pv());

            List<Object> crack2Pv = new ArrayList<>();
            crack2Pv.add(trend.getTdate());
            crack2Pv.add(trend.getCrack2_pv());

            List<Object> oilPv = new ArrayList<>();
            oilPv.add(trend.getTdate());
            oilPv.add(trend.getOil_pv());

            List<Object> qfCpPv = new ArrayList<>();
            qfCpPv.add(trend.getTdate());
            qfCpPv.add(trend.getQf_cp_pv());

            List<Object> diffCpPv = new ArrayList<>();
            diffCpPv.add(trend.getTdate());
            diffCpPv.add(trend.getDiff_cp_pv());

            List<Object> crackCpPv = new ArrayList<>();
            crackCpPv.add(trend.getTdate());
            crackCpPv.add(trend.getCrack_cp_pv());

            List<Object> preSp = new ArrayList<>();
            preSp.add(trend.getTdate());
            preSp.add(trend.getPre_sp());

            List<Object> heatSp = new ArrayList<>();
            heatSp.add(trend.getTdate());
            heatSp.add(trend.getHeat_sp());

            List<Object> qf1Sp = new ArrayList<>();
            qf1Sp.add(trend.getTdate());
            qf1Sp.add(trend.getQf1_sp());

            List<Object> qf2Sp = new ArrayList<>();
            qf2Sp.add(trend.getTdate());
            qf2Sp.add(trend.getQf2_sp());

            List<Object> diffSp = new ArrayList<>();
            diffSp.add(trend.getTdate());
            diffSp.add(trend.getDiff_sp());

            List<Object> crack1Sp = new ArrayList<>();
            crack1Sp.add(trend.getTdate());
            crack1Sp.add(trend.getCrack1_sp());

            List<Object> crack2Sp = new ArrayList<>();
            crack2Sp.add(trend.getTdate());
            crack2Sp.add(trend.getCrack2_sp());

            List<Object> oilSp = new ArrayList<>();
            oilSp.add(trend.getTdate());
            oilSp.add(trend.getOil_sp());

            List<Object> qfCpSp = new ArrayList<>();
            qfCpSp.add(trend.getTdate());
            qfCpSp.add(trend.getQf_cp_sp());

            List<Object> diffCpSp = new ArrayList<>();
            diffCpSp.add(trend.getTdate());
            diffCpSp.add(trend.getDiff_cp_sp());

            List<Object> crackCpSp = new ArrayList<>();
            crackCpSp.add(trend.getTdate());
            crackCpSp.add(trend.getCrack_cp_sp());

            prePvList.add(prePv);
            heatPvList.add(heatPv);
            qf1PvList.add(qf1Pv);
            qf2PvList.add(qf2Pv);
            diffPvList.add(diffPv);
            crack1PvList.add(crack1Pv);
            crack2PvList.add(crack2Pv);
            oilPvList.add(oilPv);
            qfCpPvList.add(qfCpPv);
            diffCpPvList.add(diffCpPv);
            crackCpPvList.add(crackCpPv);

            preSpList.add(preSp);
            heatSpList.add(heatSp);
            qf1SpList.add(qf1Sp);
            qf2SpList.add(qf2Sp);
            diffSpList.add(diffSp);
            crack1SpList.add(crack1Sp);
            crack2SpList.add(crack2Sp);
            oilSpList.add(oilSp);
            qfCpSpList.add(qfCpSp);
            diffCpSpList.add(diffCpSp);
            crackCpSpList.add(crackCpSp);
        }

        Map<String, Object> prePvMap = new HashMap<>();
        Map<String, Object> heatPvMap = new HashMap<>();
        Map<String, Object> qf1PvMap = new HashMap<>();
        Map<String, Object> qf2PvMap = new HashMap<>();
        Map<String, Object> diffPvMap = new HashMap<>();
        Map<String, Object> crack1PvMap = new HashMap<>();
        Map<String, Object> crack2PvMap = new HashMap<>();
        Map<String, Object> oilPvMap = new HashMap<>();
        Map<String, Object> qfCpPvMap = new HashMap<>();
        Map<String, Object> diffCpPvMap = new HashMap<>();
        Map<String, Object> crackCpPvMap = new HashMap<>();
        Map<String, Object> preSpMap = new HashMap<>();
        Map<String, Object> heatSpMap = new HashMap<>();
        Map<String, Object> qf1SpMap = new HashMap<>();
        Map<String, Object> qf2SpMap = new HashMap<>();
        Map<String, Object> diffSpMap = new HashMap<>();
        Map<String, Object> crack1SpMap = new HashMap<>();
        Map<String, Object> crack2SpMap = new HashMap<>();
        Map<String, Object> oilSpMap = new HashMap<>();
        Map<String, Object> qfCpSpMap = new HashMap<>();
        Map<String, Object> diffCpSpMap = new HashMap<>();
        Map<String, Object> crackCpSpMap = new HashMap<>();

        prePvMap.put("name", "prePv");
        prePvMap.put("color", "#FF0000");
        prePvMap.put("data", prePvList);

        heatPvMap.put("name", "heatPv");
        heatPvMap.put("color", "#F0F0F0");
        heatPvMap.put("data", heatPvList);

        qf1PvMap.put("name", "qf1Pv");
        qf1PvMap.put("color", "#ABF200");
        qf1PvMap.put("data", qf1PvList);

        qf2PvMap.put("name", "qf2Pv");
        qf2PvMap.put("color", "#FFB2D9");
        qf2PvMap.put("data", qf2PvList);

        diffPvMap.put("name", "diffPv");
        diffPvMap.put("color", "#FFC19E");
        diffPvMap.put("data", diffPvList);

        crack1PvMap.put("name", "crack1Pv");
        crack1PvMap.put("color", "#F15F5F");
        crack1PvMap.put("data", crack1PvList);

        crack2PvMap.put("name", "crack2Pv");
        crack2PvMap.put("color", "#5F00FF");
        crack2PvMap.put("data", crack2PvList);

        oilPvMap.put("name", "oilPv");
        oilPvMap.put("color", "#5CD1E5");
        oilPvMap.put("data", oilPvList);

        qfCpPvMap.put("name", "qfCpPv");
        qfCpPvMap.put("color", "#2F9D27");
        qfCpPvMap.put("data", qfCpPvList);

        diffCpPvMap.put("name", "diffCpPv");
        diffCpPvMap.put("color", "#FF00FF");
        diffCpPvMap.put("data", diffCpPvList);

        crackCpPvMap.put("name", "crackCpPv");
        crackCpPvMap.put("color", "#FF00FF");
        crackCpPvMap.put("data", crackCpPvList);

        preSpMap.put("name", "preSp");
        preSpMap.put("color", "#FF0000");
        preSpMap.put("data", preSpList);

        heatSpMap.put("name", "heatSp");
        heatSpMap.put("color", "#F0F0F0");
        heatSpMap.put("data", heatSpList);

        qf1SpMap.put("name", "qf1Sp");
        qf1SpMap.put("color", "#ABF200");
        qf1SpMap.put("data", qf1SpList);

        qf2SpMap.put("name", "qf2Sp");
        qf2SpMap.put("color", "#FFB2D9");
        qf2SpMap.put("data", qf2SpList);

        diffSpMap.put("name", "diffSp");
        diffSpMap.put("color", "#FFC19E");
        diffSpMap.put("data", diffSpList);

        crack1SpMap.put("name", "crack1Sp");
        crack1SpMap.put("color", "#F15F5F");
        crack1SpMap.put("data", crack1SpList);

        crack2SpMap.put("name", "crack2Sp");
        crack2SpMap.put("color", "#5F00FF");
        crack2SpMap.put("data", crack2SpList);

        oilSpMap.put("name", "oilSp");
        oilSpMap.put("color", "#5CD1E5");
        oilSpMap.put("data", oilSpList);

        qfCpSpMap.put("name", "qfCpSp");
        qfCpSpMap.put("color", "#2F9D27");
        qfCpSpMap.put("data", qfCpSpList);

        diffCpSpMap.put("name", "diffCpSp");
        diffCpSpMap.put("color", "#FF00FF");
        diffCpSpMap.put("data", diffCpSpList);

        crackCpSpMap.put("name", "crackCpSp");
        crackCpSpMap.put("color", "#FF00FF");
        crackCpSpMap.put("data", crackCpSpList);

        rtnMap.put("tdate", tdateList);
        rtnMap.put("prePv", prePvMap);
        rtnMap.put("heatPv", heatPvMap);
        rtnMap.put("qf1Pv", qf1PvMap);
        rtnMap.put("qf2Pv", qf2PvMap);
        rtnMap.put("diffPv", diffPvMap);
        rtnMap.put("crack1Pv", crack1PvMap);
        rtnMap.put("crack2Pv", crack2PvMap);
        rtnMap.put("oilPv", oilPvMap);
        rtnMap.put("qfCpPv", qfCpPvMap);
        rtnMap.put("diffCpPv", diffCpPvMap);
        rtnMap.put("crackCpPv", crackCpPvMap);

        rtnMap.put("preSp", preSpMap);
        rtnMap.put("heatSp", heatSpMap);
        rtnMap.put("qf1Sp", qf1SpMap);
        rtnMap.put("qf2Sp", qf2SpMap);
        rtnMap.put("diffSp", diffSpMap);
        rtnMap.put("crack1Sp", crack1SpMap);
        rtnMap.put("crack2Sp", crack2SpMap);
        rtnMap.put("oilSp", oilSpMap);
        rtnMap.put("qfCpSp", qfCpSpMap);
        rtnMap.put("diffCpSp", diffCpSpMap);
        rtnMap.put("crackCpSp", crackCpSpMap);

        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("data", rtnMap);

        return resultMap;
    }	
}
