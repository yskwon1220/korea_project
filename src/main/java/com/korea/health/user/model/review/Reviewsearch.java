package com.korea.health.user.model.review;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

public class Reviewsearch {
	@Service("reviewsearch")
	public class Reviewlist implements Action{
		
		@Resource
		ReviewMapper mapper;

		@Override
		public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
			
			ReviewVO vo = (ReviewVO)map.get("rrvo");
			
			ReviewPagingInfo infoVo = (ReviewPagingInfo) map.get("infoVo");
			
			infoVo.init(mapper.totalCnt());
			
			return infoVo;
		}
	}
}
