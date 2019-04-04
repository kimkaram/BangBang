package com.kh.bangbang.qna.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.bangbang.qna.model.service.QNAService;
import com.kh.bangbang.qna.model.vo.QNA;

@Controller
public class QNAController {
	
	@Autowired
	private QNAService qnaService;
	
	@RequestMapping("qnalist.do")
	public String QNAListMethod(Model model) {
		List<QNA> qnaList = qnaService.selectQNAList();
		model.addAttribute("qnaList", qnaList);
		
		return "qna/qnaList";
	}
	
	@RequestMapping("qnawrite.do")
	public String QNAWriteMethod() {
		return "qna/qnaWrite";
	}
	
	@RequestMapping(value="qnainsert.do", method=RequestMethod.POST)
	public String insertQNAMethod() {
		
		
		return "qna/qnaList";
	}
}
