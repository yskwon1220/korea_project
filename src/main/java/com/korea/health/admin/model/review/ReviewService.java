package com.korea.health.admin.model.review;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.korea.health.provider.Action;
import com.korea.health.user.model.review.ReviewMapper;
import com.korea.health.user.model.review.ReviewPagingInfo;
import com.korea.health.user.model.review.ReviewVO;

// trainer 들어왔을 때 액션들 집합
@Service("admin_page_review")	// providerController에서 bean 만들어줄때 이름
public class ReviewService implements Action {

	@Resource
	ReviewMapper mapper;
	
	@Override
	public Object execute(HashMap<String, Object> map, HttpServletRequest request) {
			System.out.println("execute에 들어온건? " + map.get("service"));
			ReviewPagingInfo infoVo = (ReviewPagingInfo) map.get("infoVo");
			ReviewVO rrVo = (ReviewVO)map.get("rrVo");
			switch ((String)map.get("service")) {
			case "info":
				System.out.println("리스트 불러온다");
				System.out.println(rrVo);
				infoVo.init(mapper.totalCnt());
				infoVo.setVoArr(mapper.reviewlist(infoVo));
				return infoVo;
				
			case "detail":
				System.out.println("switch case : detail에 들어왔다.");
//				
				System.out.println("mapper.detail(rrvo.review_no)"+mapper.detail(rrVo.review_no));
				return mapper.detail(rrVo.review_no);
				
			case "delete":
				System.out.println("switch case : delete에 들어왔다.");
				mapper.delete(rrVo.review_no);
				
				return null;
			
		
	}
			return null;
}
}
