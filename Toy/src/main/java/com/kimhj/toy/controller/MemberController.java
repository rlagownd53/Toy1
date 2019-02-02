package com.kimhj.toy.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller()
public class MemberController {

	private Logger log = LoggerFactory.getLogger(getClass());
	
	private HttpServletRequest request;
	
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
 	public String sign() {
 		return "member/login";
 	}
}
