package com.kh.bangbang.bang.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.bangbang.bang.model.service.BangService;
import com.kh.bangbang.bang.model.vo.Bang;

@Controller
public class BangController {
	
	@Autowired
	private BangService bservice;
	
	@RequestMapping("blist.do")
	public String bangListView(Model model) {
		List<Bang> blist = bservice.selectBangList();
		model.addAttribute("blist", blist);
		System.out.println("컨트롤러체크 : " + blist.size());
		return "bang/bangList";
	}
	
	@RequestMapping("loption.do")
	public String liveOptionList() {
		return "bang/bangList";
	}

}
