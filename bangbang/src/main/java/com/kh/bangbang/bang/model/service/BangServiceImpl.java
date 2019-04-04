package com.kh.bangbang.bang.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.bangbang.bang.model.dao.BangDao;
import com.kh.bangbang.bang.model.vo.Bang;

@Service("bangService")
public class BangServiceImpl implements BangService{
	
	@Autowired
	private BangDao bangDao;

	@Override
	public List<Bang> selectBangList() {
		// 매물 목록 조회
		return bangDao.selectBangList();
	}
	
	
	

}
