package com.korea.health.user.model.event;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.korea.health.user.model.event.EventVO;
import com.korea.health.user.model.payment.payMember;

@Mapper
public interface EventMapper {
List<EventVO> list();
List<EventVO> event2(String en);
List<payMember> user_serch(String id);
}
