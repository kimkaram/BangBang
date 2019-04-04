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
	private SqlSessionTemplate session; //DB ø¨∞·«‘
	
	public List<Notice> selectNoticeList() {
		return session.selectList("noticeMapper.selectList");
	}

	public int insertNotice(Notice notice) {
		System.out.println("insertdaonotice : " + notice);
		return session.insert("noticeMapper.insertNotice", notice);
	}

	public int deleteNotice(int notice_no) {
		System.out.println("daonotice_no : " + notice_no);
		return session.delete("noticeMapper.deleteNotice", notice_no);
	}

	public int updateNotice(Notice notice) {
		System.out.println("daonotice : " + notice);
		return session.update("noticeMapper.updateNotice", notice);
	}

}
