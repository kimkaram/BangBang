package com.kh.bangbang.notice.model.service;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.bangbang.notice.model.dao.NoticeDao;
import com.kh.bangbang.notice.model.vo.Notice;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService{
	@Autowired
	private NoticeDao noticeDao; //ÀÚµ¿°´Ã¼»ý¼ºÇØÁÜ.

	@Override
	public List<Notice> selectNoticeList(HashMap<String, Object> map) {
		return noticeDao.selectNoticeList(map);
	}

	/*@Override
	public int listCount() {
		return noticeDao.listCount();
	}*/
	
}
