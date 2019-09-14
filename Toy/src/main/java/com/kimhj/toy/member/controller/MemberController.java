package com.kimhj.toy.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kimhj.toy.member.MemberDTO;
import com.kimhj.toy.member.service.MemberService;

/* 
 * controller -> service -> daoimpl
 * */

@Controller()
public class MemberController {

	private Logger log = LoggerFactory.getLogger(getClass());
	
	private HttpServletRequest request;
	
	@Inject
	MemberService memberService;
	
	@RequestMapping(value="/accounts/login", method=RequestMethod.GET)
	public String goLoginPg() {
		return "member/login";
	}
	@RequestMapping(value="/accounts/login", method=RequestMethod.POST)
	public String login(Model model) {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		return "/";
	}
 	@RequestMapping(value="/accounts/sign", method=RequestMethod.GET)
 	public String goSignPg() {
 		return "member/sign";
 	}
 	@RequestMapping(value="/accounts/sign", method=RequestMethod.POST)
 	@ResponseBody
 	public int sign(@RequestBody MemberDTO mdto) {
 		int result = 0;
 		try {
 			result = memberService.userSign(mdto);
 		}catch(Exception e) {
 			log.error("error ==> "+e);
 		}
		return result;
 		
 	}
}
