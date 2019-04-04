package com.kh.bangbang.company.model.service;

import com.kh.bangbang.company.model.vo.Company;
import com.kh.bangbang.member.model.vo.Member;

public interface CompanyService {

	Company loginCheck(String memberId);

}
