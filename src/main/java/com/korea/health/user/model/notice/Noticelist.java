package com.korea.health.user.model.notice;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;


@Service("noticenoticelist")
public class Noticelist implements Action{

	int detailNum;
	
	
	@Resource
	NoticeMapper mapper;

	
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		NoticeVO nvo = (NoticeVO) map.get("nvo");
		NoticePageInfo infonoticeVo = (NoticePageInfo) map.get("infonoticeVo");
		
		 infonoticeVo.init(mapper.totalCnt());
		 infonoticeVo.setVoArr(mapper.noticeList(infonoticeVo));
		return infonoticeVo;
	}

}
