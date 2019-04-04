package com.kh.bangbang.member.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;

import com.kh.bangbang.company.model.service.CompanyService;
import com.kh.bangbang.company.model.service.CompanyServiceImpl;
import com.kh.bangbang.company.model.vo.Company;
import com.kh.bangbang.member.model.service.MemberService;
import com.kh.bangbang.member.model.vo.Member;
import com.kh.bangbang.user.model.service.UserService;
import com.kh.bangbang.user.model.service.UserServiceImpl;
import com.kh.bangbang.user.model.vo.User;



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
	
	@RequestMapping(value="login.do", method=RequestMethod.POST)
	public String loginCheck(Member member, HttpSession session, SessionStatus status) {
		Member loginMember = memberService.loginCheck(member);
		
		if(loginMember !=null) {
			//로그인 성공시 
			if(loginMember.getType().equals("개인")) {
				//개인 회원
				UserService userService = new UserServiceImpl();
				User loginUser = userService.loginCheck(member.getId());
				
				session.setAttribute("loginUser", loginUser);
				status.setComplete(); //요청 성공
			}else {
				//업체 회원
				CompanyService companyService = new CompanyServiceImpl();
				Company loginCompany = companyService.loginCheck(member.getId());
				
				session.setAttribute("loginCompany", loginCompany);
				status.setComplete(); //요청 성공
			}
			
			return "home";
		}else {
			//로그인 실패시
			return "common/error";
		}
		
		
	}
	
	
}
