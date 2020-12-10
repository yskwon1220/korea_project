package com.korea.health.admin.model.dashboard;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface DashBoardMapper {
	Integer totalVisit();	// 전체 방문자 수 
	// 일자별 방문자 day를 받아서 mapper에서 반복문으로 받아서 출력?
	int[] dailyVisit(String day); // 일자별 방문자 수
}
