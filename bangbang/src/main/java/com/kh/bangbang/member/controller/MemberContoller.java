package com.kh.bangbang.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;

import com.kh.bangbang.member.model.service.MemberService;
import com.kh.bangbang.member.model.vo.Member;



@Controller
public class MemberContoller {
	private static final Logger logger =
			LoggerFactory.getLogger(MemberContoller.class);
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@Autowired
	private MemberService memberService;
	
//	@RequestMapping(value="bcrypto.do", method=RequestMethod.POST)
//	public String testBcryptoPassword(@RequestParam("userpwd") String userPwd) {
//		System.out.println("암호 : " + userPwd);
//		//암호화 처리 
//		String buserPwd = bcryptPasswordEncoder.encode(userPwd);
//		System.out.println("변환암호 :" + buserPwd);
//		
//		//로그인시 전송온 암호와 crypto 처리된 암호값
//		//비교시에는 match(원래 문자열, 암호화된 문자열)
//		
//		System.out.println("비교 결과 : "+ bcryptPasswordEncoder.matches(userPwd, buserPwd));
//		return "test/testCrypto";
//	}
//	
	@RequestMapping("loginpage.do")
	public String moveMemberLogin() {
		
		return "member/login";
	}
	@RequestMapping("passfindpage.do")
	public String passFindPage() {
		
		return "member/memberPassFind";
	}
	
	@RequestMapping(value="login.do", method=RequestMethod.POST)
	public String loginCheck(Member member, HttpSession session, SessionStatus status) {
		Member loginMember = memberService.loginCheck(member);
		
		if(loginMember !=null) {
			//로그인 성공시 
			session.setAttribute("loginMember", loginMember);
			status.setComplete(); //요청 성공
			
			return "home";
		}else {
			//로그인 실패시
			return "common/error";
		}
	}
	
	@RequestMapping("logout.do")
	   public String logoutMethod(HttpServletRequest request) {
		   HttpSession session = request.getSession(false);
		   if(session!=null) {
			   session.invalidate();
		   }
		   return "home";
	   }
	
	
	
}
