package com.kh.bangbang.qna.model.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.bangbang.qna.model.dao.QNADao;
import com.kh.bangbang.qna.model.vo.QNA;

@Service("qnaService")
public class QNAServiceImpl implements QNAService{
	@Autowired
	private QNADao qnaDao; //ÀÚµ¿°´Ã¼»ý¼ºÇØÁÜ.

	@Override
	public List<QNA> selectQNAList(HashMap<String, Object> map) {
		return qnaDao.selectQNAList(map);
	}
}
