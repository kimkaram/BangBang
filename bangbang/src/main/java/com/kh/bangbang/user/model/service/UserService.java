package com.kh.bangbang.user.model.service;

import com.kh.bangbang.member.model.vo.Member;
import com.kh.bangbang.user.model.vo.User;

public interface UserService {

	User loginCheck(String memberId);

}
