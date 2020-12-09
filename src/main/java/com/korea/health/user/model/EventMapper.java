package com.korea.health.user.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface EventMapper {
List<EventVO> list();
List<EventVO> event2(String en);
}
