package com.kimhj.toy.member.service;

import javax.inject.Inject;

import com.kimhj.toy.member.MemberDAO;
import com.kimhj.toy.member.MemberDTO;
import com.kimhj.toy.security.SecuritySHA256;

public class MemberServiceImpl implements MemberService {

	@Inject
	SecuritySHA256 sec;
	
	@Inject
	MemberDAO mdao;
	
	@Override
	public int userSign(MemberDTO mdto) throws Exception {
		if(mdto.getPw() != "" || mdto.getPw() != null) {
			mdto.setPw(sec.hashPassword(mdto.getPw()));
		}
		return mdao.userSign(mdto);
	}

}
