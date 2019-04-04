package com.kh.bangbang.notice.model.dao;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.bangbang.notice.model.vo.Notice;

@Repository("noticeDao")
public class NoticeDao {
	@Autowired
	private SqlSessionTemplate session; //DB ������
	
	public List<Notice> selectNoticeList() {
		return session.selectList("noticeMapper.selectList");
	}

	public int insertNotice(Notice notice) {
		return session.insert("noticeMapper.insertNotice", notice);
	}

	public int deleteNotice(int notice_no) {
		return session.delete("noticeMapper.deleteNotice", notice_no);
	}

	public int updateNotice(Notice notice) {
		return session.update("noticeMapper.updateNotice", notice);
	}

}
