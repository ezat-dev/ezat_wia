package com.ace.service;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import com.ace.dao.TrendDao;

import java.util.List;

@Service
public class TrendServiceImpl implements TrendService {

    @Autowired
    private TrendDao trendDao; // TrendDao 주입

    @Override
    public List<List<Integer>> getTrendData(String startDate, String endDate) {
        return trendDao.getTrendData(startDate, endDate);
    }
}
