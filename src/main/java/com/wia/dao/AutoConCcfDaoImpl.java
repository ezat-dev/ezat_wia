package com.wia.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.wia.domain.AutoConCcf;

@Repository
public class AutoConCcfDaoImpl implements AutoConCcfDao{

	@Resource(name="session")
	private SqlSession sqlSession;
	
	@Override
	public List<AutoConCcf> autoConCcfData() {
		return sqlSession.selectList("autoConCcf.autoConCcfData");
	}

}
