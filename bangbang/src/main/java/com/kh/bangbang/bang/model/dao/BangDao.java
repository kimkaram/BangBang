package com.kh.bangbang.bang.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.bangbang.bang.model.vo.Bang;

@Repository("bangDao")
public class BangDao {
	
	@Autowired
	private SqlSessionTemplate session;

	public List<Bang> selectBangList() {
		//매물 전체리스트
		return session.selectList("bangMapper.bangList");
		
	}

}
