package com.wia.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.wia.domain.TrendCm;

@Repository
public class TrendCmDaoImpl implements TrendCmDao{

	@Resource(name="session")
    private SqlSession sqlSession;
    
    @Override
    public List<TrendCm> Trend_CmData(TrendCm trendCm) {
      
        return sqlSession.selectList("trendCm.trendCmData", trendCm);
    }
}
