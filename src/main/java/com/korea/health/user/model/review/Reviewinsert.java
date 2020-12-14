package com.korea.health.user.model.review;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.parsing.GenericTokenParser;
import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

@Service("reviewreviewinsert")
public class Reviewinsert implements Action {

	@Resource
	ReviewMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		ReviewVO vo = new ReviewVO();
		
		System.out.println(vo.review_no);
		
//		System.out.println(vo.getReview_file());
//		System.out.println("InsertForm 서비스 까지 왔다");
		
//		mapper.insert(vo);
		return null;
	
		

	}

}
