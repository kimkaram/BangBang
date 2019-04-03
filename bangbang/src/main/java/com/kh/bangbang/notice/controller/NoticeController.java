package com.kh.bangbang.notice.controller;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.bangbang.notice.model.service.NoticeService;
import com.kh.bangbang.notice.model.vo.Notice;

@Controller
public class NoticeController {
	@Autowired
	private NoticeService noticeService;
	
	
	@RequestMapping("nlist.do")
	public String noticeListMethod(Model model, HttpServletRequest request) {
			
		return "notice/noticeList";
	}
}
