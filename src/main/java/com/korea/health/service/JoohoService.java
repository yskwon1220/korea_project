package com.korea.health.service;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;
import com.korea.health.user.model.NoticeMapper;
import com.korea.health.user.model.NoticeVO;
import com.korea.health.user.model.OneboardMapper;
import com.korea.health.user.model.OneboardVO;
import com.korea.health.user.model.QnaMapper;
import com.korea.health.user.model.QnaVO;
import com.korea.health.user.model.event.EventMapper;




@Service("jooho")
public class JoohoService implements Action {

	@Resource
	EventMapper mapper;
	
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		String e_no = (String) map.get("event_no");
		switch ((String)map.get("service")) {
		case "eventevent_page":
			return mapper.list();
		case "eventevent_detail":
			return mapper.event2(e_no);
		case "paymentpayment":
			return null;


		
	}
		return null;
	
	


}
}
