package com.korea.health.admin.model.dashboard;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;
// dashboard : 방문자 정보 , 예약 정보, 고객문의 정보
@Service("admin_page_main")
public class DashBoardService implements Action{
	
	@Resource
	DashBoardMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		return mapper.totalVisit();
	}
}
