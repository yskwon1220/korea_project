package com.korea.health.service;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.user.model.EventMapper;
import com.korea.health.user.model.NoticeMapper;
import com.korea.health.user.model.NoticeVO;
import com.korea.health.user.model.OneboardMapper;
import com.korea.health.user.model.OneboardVO;
import com.korea.health.user.model.QnaMapper;
import com.korea.health.user.model.QnaVO;




@Service("jooho")
public class JoohoService implements Action {

	@Resource
	EventMapper mapper;
	
	@Resource
	NoticeMapper notmapp;
	
	@Resource
	QnaMapper qnmapp;
	
	@Resource
	OneboardMapper onmapp;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		String e_no = (String) map.get("event_no");
		NoticeVO nvo = (NoticeVO)map.get("nvo");
		QnaVO qvo = (QnaVO)map.get("qvo");
		OneboardVO ovo = (OneboardVO)map.get("ovo");
		switch ((String)map.get("service")) {
		case "eventevent_page":
			return mapper.list();
		case "eventevent_detail":
			return mapper.event2(e_no);
		case "paymentpayment":
			return null;
		case "noticenoticelist":
			return notmapp.nlist();
		case "qnaqnalist":
			return qnmapp.qnalist();
		case "noticenoticedetail":
			return notmapp.detail(nvo.notice_no);
		case "qnaqnadetail":
			return qnmapp.detail(qvo.qna_no);
		case "fnqonedetail":
			return onmapp.detail(ovo.board_no);
		case "fnqoneinsert":
			onmapp.insert(ovo);
			return "redirect:detail?no=" + ovo.getBoard_no();
		
	}
		return null;
	
	


}
}
