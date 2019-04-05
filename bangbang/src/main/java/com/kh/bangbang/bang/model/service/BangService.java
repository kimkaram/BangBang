package com.kh.bangbang.bang.model.service;

import java.util.List;

import com.kh.bangbang.bang.model.vo.Bang;
import com.kh.bangbang.bang.model.vo.LiveOption;
import com.kh.bangbang.bang.model.vo.ResOption;

public interface BangService {
	
	//전체리스트 조회
	List<Bang> selectBangList();
	//방상세보기
	Bang infoBangView(int pro_no);
	List<LiveOption> infoLiveBang(int pro_no);
	List<ResOption> infoResBang(int pro_no);

}
