package com.kh.bangbang.qna.model.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.bangbang.qna.model.vo.QNA;

@Repository("qnaDao")
public class QNADao {
	
	@Autowired
	private SqlSessionTemplate session; //DB ������
	
	public List<QNA> selectQNAList(HashMap<String, Object> map){
		return session.selectList("QNAMapper.selectList", map);
	}

}
