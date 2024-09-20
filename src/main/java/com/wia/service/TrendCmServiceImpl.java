package com.wia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wia.dao.TrendCmDao;
import com.wia.domain.TrendCm;

@Service
public class TrendCmServiceImpl implements TrendCmService{

    @Autowired
    private TrendCmDao trend_cmDao;
    
    @Override
    public List<TrendCm> getTrendData(TrendCm trendCm) {
        return trend_cmDao.Trend_CmData(trendCm);
    }
}
