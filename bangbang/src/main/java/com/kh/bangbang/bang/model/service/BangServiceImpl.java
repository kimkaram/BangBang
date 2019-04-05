package com.kh.bangbang.bang.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.bangbang.bang.model.dao.BangDao;
import com.kh.bangbang.bang.model.vo.Bang;
import com.kh.bangbang.bang.model.vo.LiveOption;
import com.kh.bangbang.bang.model.vo.ResOption;

@Service("bangService")
public class BangServiceImpl implements BangService{
	
	@Autowired
	private BangDao bangDao;

	@Override
	public List<Bang> selectBangList() {
		// 매물 목록 조회
		return bangDao.selectBangList();
	}

	@Override
	public Bang infoBangView(int pro_no) {
		// 매물 상세보기
		return bangDao.infoBangView(pro_no);
	}

	@Override
	public List<LiveOption> infoLiveBang(int pro_no) {
		// 매물 상세보기 생활옵션
		return bangDao.infoLiveBang(pro_no);
	}

	@Override
	public List<ResOption> infoResBang(int pro_no) {
		// 매물 상세보기 거주옵션
		return bangDao.infoResBang(pro_no);
	}
	
	
	

}
