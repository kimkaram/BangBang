package com.kh.bangbang.user.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.bangbang.user.model.dao.UserDao;
import com.kh.bangbang.user.model.vo.User;

@Service("userService")
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao userDao;
	
	@Override
	public User loginCheck(String memberId) {	
		UserDao userDao = new UserDao();
		return userDao.loginCheck(memberId);
	}

}
