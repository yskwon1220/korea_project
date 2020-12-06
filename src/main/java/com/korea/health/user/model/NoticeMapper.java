package com.korea.health.user.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface NoticeMapper {
	List<NoticeVO> notice_list();
}
