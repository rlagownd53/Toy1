package com.test.DAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.test.TestBean;

@Repository
public class TestDAOImpl implements TestDAO{

	private static final String namespace = "com.test.TestMapper";
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<TestBean> test() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+".test");
	}
	
	
}
