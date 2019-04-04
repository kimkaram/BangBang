package com.kh.bangbang.company.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;

import com.kh.bangbang.company.model.vo.Company;

@Repository("companyDao")
public class CompanyDao {
	
	@Autowired
	private SqlSessionTemplate mybatisSession;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;

	public Company loginCheck(String memberId) {
		Company loginCompany = mybatisSession.selectOne("companyMapper.selectLogin", memberId);
		return loginCompany;
	}

}
