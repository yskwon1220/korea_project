package com.korea.health.admin.model.event;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.korea.health.admin.model.goods.GoodsVO;

@Mapper
public interface EventAdminMapper {
	List<EventAdminVO> eventList();
	EventAdminVO eventDetail(String event_no);
	Integer eventInsert(EventAdminVO vo);
	String eventCnt();
	List<GoodsVO> goodsList();
	Integer mainFileDelete(EventAdminVO vo);
	Integer detailFile1Delete(EventAdminVO vo);
	Integer detailFile2Delete(EventAdminVO vo);
	Integer detailFile3Delete(EventAdminVO vo);
	Integer eventModify(EventAdminVO vo);
	Integer newNum(EventAdminVO vo);
	Integer eventDelete(EventAdminVO vo);
}
