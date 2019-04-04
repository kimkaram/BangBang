package com.kh.bangbang.user.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;

import com.kh.bangbang.user.model.vo.User;

@Repository("userDao")
public class UserDao {
	
	@Autowired
	private SqlSessionTemplate mybatisSession;
	@Autowired
	private BCryptPasswordEncoder bpEncoder;

	public User loginCheck(String memberId) {
		
		System.out.println(mybatisSession);
		User loginUser= mybatisSession.selectOne("userMapper.selectLogin",memberId);
		
		System.out.println(loginUser.toString());
		return loginUser;
	}

}
