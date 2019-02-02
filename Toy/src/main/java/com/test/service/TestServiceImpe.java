package com.test.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.test.TestBean;
import com.test.DAO.TestDAO;

@Service
public class TestServiceImpe implements TestService {

	@Inject
	private TestDAO dao;
	
	@Override
	public List<TestBean> test() throws Exception {
		return dao.test();
	}


}
