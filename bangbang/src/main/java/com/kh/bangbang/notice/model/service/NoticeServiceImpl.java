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
	public List<Notice> selectNoticeList() {
		return noticeDao.selectNoticeList();
	}

	@Override
	public int insertNotice(Notice notice) {
		System.out.println("insertservicenotice : " + notice);
		return noticeDao.insertNotice(notice);
	}

	@Override
	public int deleteNotice(int notice_no) {
		System.out.println("servicenotice_no : " + notice_no);
		return noticeDao.deleteNotice(notice_no);
	}

	@Override
	public int updateNotice(Notice notice) {
		System.out.println("servicenotice : " + notice);
		return noticeDao.updateNotice(notice);
	}

}
