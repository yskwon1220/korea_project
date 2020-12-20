package com.korea.health.admin.model.event;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface EventadminMapper {
	List<EventadminVO> eventList();
	
	EventadminVO eventDetail(int event_cnt);
	
	Integer eventInsert(EventadminVO vo);
	
	Integer eventModify(EventadminVO vo);

	Integer eventDelete(EventadminVO vo);
	
	Integer newNum(EventadminVO vo);
	
	String eventCnt();
}
