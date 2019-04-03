package com.kh.bangbang.qna.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.bangbang.qna.model.service.QNAService;

@Controller
public class QNAController {
	
	@Autowired
	private QNAService qnaService;
	
	@RequestMapping("qnalist.do")
	public String QNAListMethod(Model model, HttpServletRequest request) {
		
		return "qna/qnaList";
	}
}
