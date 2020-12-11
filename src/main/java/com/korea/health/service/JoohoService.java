package com.korea.health.service;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;
import com.korea.health.user.model.event.EventMapper;
import com.korea.health.user.model.fnq.OneboardMapper;
import com.korea.health.user.model.fnq.OneboardVO;
import com.korea.health.user.model.notice.NoticeMapper;
import com.korea.health.user.model.notice.NoticeVO;
import com.korea.health.user.model.qna.QnaMapper;
import com.korea.health.user.model.qna.QnaVO;




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
