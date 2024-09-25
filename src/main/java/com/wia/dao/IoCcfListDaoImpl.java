package com.wia.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.wia.domain.IoCcfList;

@Repository
public class IoCcfListDaoImpl implements IoCcfListDao {

    @Resource(name="session")
    private SqlSession sqlSession;

    @Override
    public List<IoCcfList> getIoCcfList(IoCcfList ioCcfList1) {
        return sqlSession.selectList("ioCcfList.getIoCcfList", ioCcfList1);
    }
}
