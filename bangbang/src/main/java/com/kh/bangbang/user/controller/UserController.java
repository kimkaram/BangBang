package com.kh.bangbang.user.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.bangbang.user.model.service.UserService;

@Controller
public class UserController {


	private static final Logger logger =
			LoggerFactory.getLogger(UserController.class);
	@Autowired
	private UserService userService;
	
	@RequestMapping("userMyPage.do")
	public String moveUserMyPage() {
		
		return "user/userMyPage";
	}

}
