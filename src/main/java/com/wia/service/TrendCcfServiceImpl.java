package com.wia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wia.dao.TrendCcfDao;
import com.wia.domain.TrendCcf;

@Service
public class TrendCcfServiceImpl implements TrendCcfService{

	 @Autowired
	    private TrendCcfDao trend_ccfDao;
	    
	    @Override
	    public List<TrendCcf> getTrendData(TrendCcf trendCcf) {
	        return trend_ccfDao.Trend_CcfData(trendCcf);
	    }
}
