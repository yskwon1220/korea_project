package com.korea.health.service;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;
import com.korea.health.user.model.event.EventMapper;


@Service("event")
public class EventService implements Action {

	@Resource
	EventMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		String e_no = (String) map.get("event_no");
	
		
		switch ((String)map.get("service")) {
		case "event_page":
			return mapper.list();
		case "event_detail":
			return mapper.event2(e_no);

	}
		return null;

}





}
