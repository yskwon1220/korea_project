package com.korea.health.user.model.review;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

@Service("reviewreviewdelete")
public class Reviewdelete implements Action{
	
	@Resource
	ReviewMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		// TODO Auto-generated method stub
		ReviewVO vo = (ReviewVO)map.get("rrvo");
		
		return mapper.delete(vo.review_no);
	}


	
}
