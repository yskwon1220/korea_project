package com.korea.health.user.model.notice;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;






@Mapper
public interface NoticeMapper {
//	List<NoticeVO> noticeList();
	Integer totalCnt();
	List<NoticeVO> noticeList(NoticePageInfo infonoticeVo);
	List<NoticeVO> allNoticeList();
	NoticeVO detail(int notice_no);
	int updateCnt(int notice_no);
	void deleteNum(NoticeVO vo);
	void insert(NoticeVO vo);
	int modify(NoticeVO vo);
	boolean delete(int notice_no);
}
