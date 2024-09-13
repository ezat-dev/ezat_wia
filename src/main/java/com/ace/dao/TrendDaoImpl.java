package com.ace.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ace.domain.TrendData;

import java.util.List;

@Repository
public class TrendDaoImpl implements TrendDao {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public List<List<Integer>> getTrendData(String startDate, String endDate) {
        // TrendData 객체를 생성하여 날짜를 설정
        TrendData trendData = new TrendData();
        trendData.setStartDate(startDate);
        trendData.setEndDate(endDate);

        // SQL 쿼리를 통해 c01~c14 및 cs01~cs14 값을 가져오는 쿼리
        return sqlSession.selectList("trend.getTrendData", trendData);
    }
}
