package com.wia.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.wia.domain.TrendCcf;

@Repository
public class TrendCcfDaoImpl implements TrendCcfDao{

    @Autowired
    private SqlSession sqlSession;
    
    @Override
    public List<TrendCcf> Trend_CcfData(TrendCcf trendCcf) {
      
        return sqlSession.selectList("trendCcf.trendCcfData", trendCcf);
    }
}
