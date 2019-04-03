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
	
	public List<Notice> selectNoticeList(HashMap<String, Object> map) {
		return session.selectList("noticeMapper.selectList", map);
	}

	/*public int listCount() {
		return session.selectOne("noticeMapper.listCount");
	}*/
}
