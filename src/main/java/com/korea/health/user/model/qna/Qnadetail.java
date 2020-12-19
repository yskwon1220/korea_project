package com.korea.health.user.model.qna;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

@Service("qnaqnadetail")
public class Qnadetail implements Action {

	@Resource
	QnaMapper mapper;
	
	
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		QnaVO qvo = (QnaVO) map.get("qvo");
		QnaPageInfo infoqnaVo = (QnaPageInfo) map.get("infoqnaVo");
		
		mapper.updateCnt(qvo.qna_no);
		return mapper.detail(qvo.qna_no);
	}

}
