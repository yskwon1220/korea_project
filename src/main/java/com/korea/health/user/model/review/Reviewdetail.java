package com.korea.health.user.model.review;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.korea.health.provider.Action;

@Service("reviewreview_detail")
public class Reviewdetail implements Action {

	@Resource
	ReviewMapper mapper;

	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest req) {
		ReviewVO vo = (ReviewVO) map.get("rrvo");
		int review_no = Integer.parseInt(req.getParameter("review_no"));
		req.setAttribute("review_no", review_no);
		mapper.updateCnt(vo.review_no);
	    System.out.println("카운트 되나?"+mapper.updateCnt(vo.review_no));
	    System.out.println("### @Reviewdetail.java ###");
	    System.out.println(mapper.detail(review_no));
		return mapper.detail(review_no);

	}

}
