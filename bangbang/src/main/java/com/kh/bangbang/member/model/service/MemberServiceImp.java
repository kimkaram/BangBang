package com.kh.bangbang.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.bangbang.member.model.dao.MemberDao;
import com.kh.bangbang.member.model.vo.Member;

@Service("memberService")
public class MemberServiceImp implements MemberService{

	   @Autowired
	   private MemberDao memberDao;
	   
	   @Override
	   public Member loginCheck(Member member) {
	      
	      return memberDao.loginCheck(member);
	   }

	   
	

}
