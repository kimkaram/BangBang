package com.kh.bangbang.notice.model.service;
import java.util.HashMap;
import java.util.List;

import com.kh.bangbang.notice.model.vo.Notice;
public interface NoticeService {
	List<Notice> selectNoticeList(HashMap<String, Object> map);
	//int listCount();
}
