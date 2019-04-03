package com.kh.bangbang.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;

import com.kh.bangbang.member.model.vo.Member;



@Repository("memberDao")
public class MemberDao {
	//마이바티스 연동 객체 선언
	@Autowired
	private SqlSessionTemplate mybatisSession;
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	public Member loginCheck(Member member) {
		Member loginMember= mybatisSession.selectOne("memberMapper.selectLogin",member);
		
		if(!member.getPwd().equals(loginMember.getPwd())){
			
			loginMember = null;
		
		}
		
		return loginMember;
	}
}
