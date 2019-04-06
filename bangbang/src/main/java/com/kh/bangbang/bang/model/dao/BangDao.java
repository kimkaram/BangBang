package com.kh.bangbang.bang.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.bangbang.bang.model.vo.Bang;
import com.kh.bangbang.bang.model.vo.LiveOption;
import com.kh.bangbang.bang.model.vo.ResOption;

@Repository("bangDao")
public class BangDao {
	
	@Autowired
	private SqlSessionTemplate session;

	public List<Bang> selectBangList() {
		//매물 전체리스트
		return session.selectList("bangMapper.bangList");
	}

	public Bang infoBangView(int pro_no) {
		// 매물 상세보기
		return session.selectOne("bangMapper.bangInfo", pro_no);
	}

	public List<LiveOption> infoLiveBang(int pro_no) {
		// 매물 상세보기 주거옵션
		return session.selectList("bangMapper.infoLiveBang", pro_no);
	}

	public List<ResOption> infoResBang(int pro_no) {
		// 매물 상세보기 거주옵션
		return session.selectList("bangMapper.infoResBang", pro_no);
	}

}
