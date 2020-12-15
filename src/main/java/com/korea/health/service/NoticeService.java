package com.korea.health.service;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;
import com.korea.health.user.model.fnq.FnqPageInfo;
import com.korea.health.user.model.notice.NoticeMapper;
import com.korea.health.user.model.notice.NoticePageInfo;
import com.korea.health.user.model.notice.NoticeVO;

@Service("notice")
public class NoticeService implements Action {

	int detailNum;
	
	@Resource
	NoticeMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		NoticeVO nvo = (NoticeVO) map.get("nvo");
		NoticePageInfo infonoticeVo = (NoticePageInfo) map.get("infonoticeVo");
		switch ((String) map.get("service")) {
		case "noticenoticelist":
			 
			 infonoticeVo.init(mapper.totalCnt());
			 infonoticeVo.setVoArr(mapper.noticeList(infonoticeVo));
			return infonoticeVo;
			
		case "noticenoticedetail":
			return mapper.detail(nvo.notice_no);
		}
		return null;
	}
}