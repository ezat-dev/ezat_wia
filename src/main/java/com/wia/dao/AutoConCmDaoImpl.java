package com.wia.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.wia.domain.AutoConCm;

@Repository
public class AutoConCmDaoImpl implements AutoConCmDao{

	@Resource(name="session")
	private SqlSession sqlSession;
	
	@Override
	public List<AutoConCm> autoConCmData() {
		return sqlSession.selectList("autoConCm.autoConCmData");
	}

}
