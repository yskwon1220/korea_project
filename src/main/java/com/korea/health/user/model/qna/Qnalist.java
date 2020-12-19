package com.korea.health.user.model.qna;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

@Service("qnaqnalist")
public class Qnalist implements Action {

	@Resource
	QnaMapper mapper;
	
	
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		QnaVO qvo = (QnaVO) map.get("qvo");
		QnaPageInfo infoqnaVo = (QnaPageInfo) map.get("infoqnaVo");
		
		infoqnaVo.init(mapper.totalCnt());
		infoqnaVo.setVoArr(mapper.qnaList(infoqnaVo));
		return infoqnaVo;
	}

}
