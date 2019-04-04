package com.kh.bangbang.notice.model.service;
import java.util.HashMap;
import java.util.List;

import com.kh.bangbang.notice.model.vo.Notice;
public interface NoticeService {
	List<Notice> selectNoticeList();
	int insertNotice(Notice notice);
	int updateNotice(Notice notice);
	int deleteNotice(int notice_no);
}
