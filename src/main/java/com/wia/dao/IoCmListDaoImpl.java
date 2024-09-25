package com.wia.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.wia.domain.IoCmList;

@Repository
public class IoCmListDaoImpl implements IoCmListDao {

    @Resource(name="session")
    private SqlSession sqlSession;

    @Override
    public List<IoCmList> getIoCmList(IoCmList ioCmList1) {
    	  return sqlSession.selectList("ioCmList.getIoCmList", ioCmList1);
    }
}
