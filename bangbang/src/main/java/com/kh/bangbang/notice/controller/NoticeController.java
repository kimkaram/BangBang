package com.kh.bangbang.notice.controller;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.bangbang.notice.model.service.NoticeService;
import com.kh.bangbang.notice.model.vo.Notice;

@Controller
public class NoticeController {
	@Autowired
	private NoticeService noticeService;
	
	
	@RequestMapping("nlist.do")
	public String noticeListMethod(Model model) {
		List<Notice> noticeList = noticeService.selectNoticeList();
		model.addAttribute("noticeList", noticeList);
		return "notice/noticeList";
	}
	
	@RequestMapping("nwrite.do")
	public String noticeWriteMethod() {
		return "notice/noticeWrite";
	}
	
	@RequestMapping(value="ninsert.do", method=RequestMethod.POST)
	public String insertNoticeMethod(Notice notice) {
		int result = noticeService.insertNotice(notice);
		return "redirect:/nlist.do";
	}
	
	@RequestMapping(value="nupdate.do", method=RequestMethod.GET)
	public String updateNoticeMethod(Notice notice) {
		int result = noticeService.updateNotice(notice);
		return "notice/noticeList";
	}
	
	@RequestMapping(value="ndelete.do", method=RequestMethod.GET)
	public String deleteNoticeMethod(int notice_no) {
		int result = noticeService.deleteNotice(notice_no);
		return "home";
	}
	
}
