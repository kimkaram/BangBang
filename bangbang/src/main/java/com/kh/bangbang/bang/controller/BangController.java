package com.kh.bangbang.bang.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.bangbang.bang.model.service.BangService;
import com.kh.bangbang.bang.model.vo.Bang;
import com.kh.bangbang.bang.model.vo.LiveOption;
import com.kh.bangbang.bang.model.vo.ResOption;

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
	
	@RequestMapping("binfo.do")
	public String infoBangView(Model model, int pro_no) {
		Bang Bang = bservice.infoBangView(pro_no);
		List<LiveOption> live = bservice.infoLiveBang(pro_no);
		List<ResOption> res = bservice.infoResBang(pro_no); 
		model.addAttribute("Bang", Bang);
		model.addAttribute("live", live);
		model.addAttribute("res", res);
		System.out.println("방상세보기 매물번호 컨트롤러 체크 : " + pro_no);
		return "bang/bangInfo";
	}
}
