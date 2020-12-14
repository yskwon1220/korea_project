package com.korea.health.user.model.notice;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.korea.health.user.model.fnq.FnqPageInfo;




@Mapper
public interface NoticeMapper {
//	List<NoticeVO> noticeList();
	Integer totalCnt();
	List<NoticeVO> noticeList(NoticePageInfo infonoticeVo);
	NoticeVO detail(int notice_no);

	
	void insert(NoticeVO vo);
	int modify(NoticeVO vo);
	boolean delete(int notice_no);
}
