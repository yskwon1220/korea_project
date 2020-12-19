package com.korea.health.user.model.review;

import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.korea.health.provider.Action;

@Service("reviewreviewmodify")
public class Reviewmodify implements Action {

	@Resource
	ReviewMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		//PRO : Forward안됌. RVO값을 못받음
		
		System.out.println("reviewmodify");
		
		ReviewVO vo = (ReviewVO)map.get("rrvo");
		int review_no = vo.getReview_no();
		
	
		
		ReviewVO review = mapper.detail(review_no);
		
		
		
		return review;
		
	}
	
}
