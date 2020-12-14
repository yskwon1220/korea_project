package com.korea.health.service;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;
import com.korea.health.user.model.notice.NoticeMapper;
import com.korea.health.user.model.notice.NoticePageInfo;
import com.korea.health.user.model.notice.NoticeVO;
import com.korea.health.user.model.qna.QnaMapper;
import com.korea.health.user.model.qna.QnaPageInfo;
import com.korea.health.user.model.qna.QnaVO;

@Service("qna")
public class QnaService implements Action {

	int detailNum;
	
	@Resource
	QnaMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		QnaVO qvo = (QnaVO) map.get("qvo");
		QnaPageInfo infoqnaVo = (QnaPageInfo) map.get("infoqnaVo");
		switch ((String) map.get("service")) {
		case "qnaqnalist":
			infoqnaVo.init(mapper.totalCnt());
			infoqnaVo.setVoArr(mapper.qnaList(infoqnaVo));
			return infoqnaVo;
		case "qnaqnadetail":
			return mapper.detail(qvo.qna_no);
		}
		return null;
	}
}