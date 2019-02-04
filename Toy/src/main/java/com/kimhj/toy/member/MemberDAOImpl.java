package com.kimhj.toy.member;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

public class MemberDAOImpl implements MemberDAO {

	private Logger log = LoggerFactory.getLogger(getClass());
	
	private static final String namespace = "com.kimhj.toy.memberMapper";
	
	@Inject
	SqlSession sqlSession;
	
	@Override
	public int userSign(MemberDTO mdto) throws Exception {
		int result = 0;
		int maxNo = sqlSession.selectOne(namespace+".selectMaxNo");
		result = sqlSession.selectOne(namespace+".memberInsert");
		return result;
	}

}
