package com.kh.bangbang.company.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.bangbang.company.model.dao.CompanyDao;
import com.kh.bangbang.company.model.vo.Company;

@Service("companyService")
public class CompanyServiceImpl implements CompanyService{

	@Autowired
	private CompanyDao companyDao;
	
	@Override
	public Company loginCheck(String memberId) {
		return companyDao.loginCheck(memberId);
	}

}
