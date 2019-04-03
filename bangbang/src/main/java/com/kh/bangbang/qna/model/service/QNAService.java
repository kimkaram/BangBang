package com.kh.bangbang.qna.model.service;

import java.util.HashMap;
import java.util.List;

import com.kh.bangbang.qna.model.vo.QNA;

public interface QNAService {
	List<QNA> selectQNAList(HashMap<String, Object> map);
}
