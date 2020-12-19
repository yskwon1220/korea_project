package com.korea.health.user.model.review;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

@Service("reviewreviewlist")
public class Reviewlist implements Action{
	int detailNum;
	@Resource
	ReviewMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		// TODO Auto-generated method stub
		ReviewPagingInfo infoVo = (ReviewPagingInfo) map.get("infoVo");
		ReviewVO rrvo = (ReviewVO)map.get("rrvo");
		
	
		infoVo.init(mapper.totalCnt());
		infoVo.setVoArr(mapper.reviewlist(infoVo));
		return infoVo;
	}


	
}
